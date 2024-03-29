# --
# Copyright (C) 2001-2021 OTRS AG, https://otrs.com/
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

use strict;
use warnings;
use utf8;

use vars (qw($Self));

# get selenium object
my $Selenium = $Kernel::OM->Get('Kernel::System::UnitTest::Selenium');

$Selenium->RunTest(
    sub {

        # get helper object
        my $Helper = $Kernel::OM->Get('Kernel::System::UnitTest::Helper');

        # create and log in test user
        my $TestUserLogin = $Helper->TestUserCreate(
            Groups => [ 'admin', 'itsm-change', 'itsm-change-manager' ],
        ) || die "Did not get test user";

        $Selenium->Login(
            Type     => 'Agent',
            User     => $TestUserLogin,
            Password => $TestUserLogin,
        );

        # get test user ID
        my $TestUserID = $Kernel::OM->Get('Kernel::System::User')->UserLookup(
            UserLogin => $TestUserLogin,
        );

        # get script alias
        my $ScriptAlias = $Kernel::OM->Get('Kernel::Config')->Get('ScriptAlias');

        # create and test change for each state in AgentITSMChangeMyCAB screen
        for my $ChangeState ( 'requested', 'pending approval', 'approved', 'in progress', 'pending pir' ) {

            # get change state data
            my $ChangeStateDataRef = $Kernel::OM->Get('Kernel::System::GeneralCatalog')->ItemGet(
                Class => 'ITSM::ChangeManagement::Change::State',
                Name  => $ChangeState,
            );

            # get change object
            my $ChangeObject = $Kernel::OM->Get('Kernel::System::ITSMChange');

            # create test change
            my $ChangeTitleRandom = 'ITSMChange ' . $ChangeState . ' ' . $Helper->GetRandomID();
            my $ChangeID          = $ChangeObject->ChangeAdd(
                ChangeTitle   => $ChangeTitleRandom,
                Description   => 'Selenium Test Description',
                Justification => 'Selenium Test Justification',
                ChangeStateID => $ChangeStateDataRef->{ItemID},
                CABAgents     => [$TestUserID],
                UserID        => 1,
            );
            $Self->True(
                $ChangeID,
                "Change in $ChangeState state is created",
            );

            # navigate to AgentITSMChangeMyCAB screen
            $Selenium->VerifiedGet(
                "${ScriptAlias}index.pl?Action=AgentITSMChangeMyCAB;SortBy=ChangeNumber;OrderBy=Down"
            );

            # replace 'space' with '%20' in string, if needed, so we can use it as a filter param
            my $FilterChangeState = $ChangeState;
            $FilterChangeState =~ s/ /%20/g;

            # click on appropriate filter
            $Selenium->find_element("//a[contains(\@href, \'Filter=$FilterChangeState' )]")->VerifiedClick();

            # check screen
            $Selenium->find_element( "table",             'css' );
            $Selenium->find_element( "table thead tr th", 'css' );
            $Selenium->find_element( "table tbody tr td", 'css' );

            # check for test created change
            $Self->True(
                index( $Selenium->get_page_source(), $ChangeTitleRandom ) > -1,
                "$ChangeTitleRandom is found",
            );

            # delete created test change
            my $Success = $ChangeObject->ChangeDelete(
                ChangeID => $ChangeID,
                UserID   => 1,
            );
            $Self->True(
                $Success,
                "$ChangeTitleRandom is deleted",
            );
        }

        # make sure the cache is correct
        $Kernel::OM->Get('Kernel::System::Cache')->CleanUp( Type => 'ITSMChange*' );
    }

);

1;
