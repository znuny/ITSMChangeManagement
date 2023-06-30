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

my $Selenium = $Kernel::OM->Get('Kernel::System::UnitTest::Selenium');

$Selenium->RunTest(
    sub {

        my $Helper               = $Kernel::OM->Get('Kernel::System::UnitTest::Helper');
        my $GeneralCatalogObject = $Kernel::OM->Get('Kernel::System::GeneralCatalog');

        # Get change state data.
        my $ChangeStateDataRef = $GeneralCatalogObject->ItemGet(
            Class => 'ITSM::ChangeManagement::Change::State',
            Name  => 'requested',
        );

        my $ChangeObject = $Kernel::OM->Get('Kernel::System::ITSMChange');

        # Create test change
        my $ChangeTitleRandom = 'ITSMChange Requested ' . $Helper->GetRandomID();
        my $ChangeID          = $ChangeObject->ChangeAdd(
            ChangeTitle   => $ChangeTitleRandom,
            Description   => 'Selenium Test Description',
            Justification => 'Selenium Test Justification',
            ChangeStateID => $ChangeStateDataRef->{ItemID},
            UserID        => 1,
        );
        $Self->True(
            $ChangeID,
            "$ChangeTitleRandom is created",
        );

        # Create and log in test user.
        my $TestUserLogin = $Helper->TestUserCreate(
            Groups => [ 'admin', 'itsm-change', 'itsm-change-builder', 'itsm-change-manager' ]
        ) || die "Did not get test user";

        $Selenium->Login(
            Type     => 'Agent',
            User     => $TestUserLogin,
            Password => $TestUserLogin,
        );

        my $ScriptAlias = $Kernel::OM->Get('Kernel::Config')->Get('ScriptAlias');

        # Navigate to AgentITSMChangeZoom of created test change.
        $Selenium->VerifiedGet("${ScriptAlias}index.pl?Action=AgentITSMChangeZoom;ChangeID=$ChangeID");

        # Click on 'Conditions' and switch screens.
        $Selenium->find_element("//a[contains(\@href, \'Action=AgentITSMChangeCondition;ChangeID=$ChangeID' )]")
            ->click();

        $Selenium->WaitFor( WindowCount => 2 );
        my $Handles = $Selenium->get_window_handles();
        $Selenium->switch_to_window( $Handles->[1] );

        # Wait until page has loaded, if necessary.
        $Selenium->WaitFor(
            JavaScript => 'return typeof($) === "function" && $("button[name=\'AddCondition\']").length'
        );
        sleep 1;

        # Click 'Add new condition'.
        $Selenium->find_element("//button[\@name='AddCondition'][\@type='submit']")->VerifiedClick();
        $Selenium->WaitFor( JavaScript => 'return typeof($) === "function" && $("#Name").length' );

        # Create test condition.
        my $ConditionNameRandom = "Condition " . $Helper->GetRandomID();
        $Selenium->find_element( "#Name",    'css' )->send_keys($ConditionNameRandom);
        $Selenium->find_element( "#Comment", 'css' )->send_keys("SeleniumCondition");

        # Get condition object.
        my $ConditionObject = $Kernel::OM->Get('Kernel::System::ITSMChange::ITSMCondition');

        # Get needed IDs.
        my $ExpresionAttributeID = $ConditionObject->AttributeLookup(
            Name => 'PriorityID',
        );
        my $PriorityDataRef = $GeneralCatalogObject->ItemGet(
            Class => 'ITSM::ChangeManagement::Priority',
            Name  => '2 low',
        );
        my $ActionAttributeID = $ConditionObject->AttributeLookup(
            Name => 'ChangeStateID'
        );
        my $ActionOperatorID = $ConditionObject->OperatorLookup(
            Name => 'set',
        );
        my $ConditionChangeStateDataRef = $GeneralCatalogObject->ItemGet(
            Class => 'ITSM::ChangeManagement::Change::State',
            Name  => 'approved',
        );

        # Add new expression
        #   in change object for test change, look for priority value of '2 low'.
        $Selenium->find_element("//button[\@name='AddExpressionButton'][\@type='submit']")->VerifiedClick();

        $Selenium->execute_script(
            "\$('#SaveButton')[0].scrollIntoView(true);",
        );

        $Selenium->WaitFor( JavaScript => "return \$('#ExpressionID-NEW-ObjectID option').length > 1;" );
        $Selenium->InputFieldValueSet(
            Element => '#ExpressionID-NEW-ObjectID',
            Value   => 1,
        );

        # Wait for ajax response to fill next dropdown list with more than 1 value.
        $Selenium->WaitFor( JavaScript => "return \$('#ExpressionID-NEW-Selector option').length > 1;" );
        $Selenium->InputFieldValueSet(
            Element => '#ExpressionID-NEW-Selector',
            Value   => $ChangeID,
        );

        # Wait for ajax response to fill next dropdown list with more than 1 value.
        $Selenium->WaitFor( JavaScript => "return \$('#ExpressionID-NEW-AttributeID option').length > 1;" );
        $Selenium->InputFieldValueSet(
            Element => '#ExpressionID-NEW-AttributeID',
            Value   => $ExpresionAttributeID,
        );

        # Wait for ajax response to fill next dropdown list with more than 1 value.
        $Selenium->WaitFor( JavaScript => "return \$('#ExpressionID-NEW-OperatorID option').length > 1;" );
        $Selenium->InputFieldValueSet(
            Element => '#ExpressionID-NEW-OperatorID',
            Value   => 1,
        );

        # Wait for ajax response to fill next dropdown list with more than 1 value.
        $Selenium->WaitFor( JavaScript => "return \$('#ExpressionID-NEW-CompareValue option').length > 1;" );
        $Selenium->InputFieldValueSet(
            Element => '#ExpressionID-NEW-CompareValue',
            Value   => $PriorityDataRef->{ItemID},
        );

        # Add new action in change object for test change, set change state on 'Approved'.
        $Selenium->find_element("//button[\@name='AddActionButton'][\@type='submit']")->VerifiedClick();

        $Selenium->execute_script(
            "\$('#SaveButton')[0].scrollIntoView(true);",
        );

        $Selenium->WaitFor( JavaScript => "return \$('#ActionID-NEW-ObjectID option').length > 1;" );
        $Selenium->InputFieldValueSet(
            Element => '#ActionID-NEW-ObjectID',
            Value   => 1,
        );

        # Wait for ajax response to fill next dropdown list with more than 1 value.
        $Selenium->WaitFor( JavaScript => "return \$('#ActionID-NEW-Selector option').length > 1;" );
        $Selenium->InputFieldValueSet(
            Element => '#ActionID-NEW-Selector',
            Value   => $ChangeID,
        );

        # Wait for ajax response to fill next dropdown list with more than 1 value.
        $Selenium->WaitFor( JavaScript => "return \$('#ActionID-NEW-AttributeID option').length > 1;" );
        $Selenium->InputFieldValueSet(
            Element => '#ActionID-NEW-AttributeID',
            Value   => $ActionAttributeID,
        );

        # Wait for ajax response to fill next dropdown list with more than 1 value.
        $Selenium->WaitFor( JavaScript => "return \$('#ActionID-NEW-OperatorID option').length > 1;" );
        $Selenium->InputFieldValueSet(
            Element => '#ActionID-NEW-OperatorID',
            Value   => $ActionOperatorID,
        );

        # Wait for ajax response to fill next dropdown list with more than 1 value.
        $Selenium->WaitFor( JavaScript => "return \$('#ActionID-NEW-ActionValue option').length > 1;" );
        $Selenium->InputFieldValueSet(
            Element => '#ActionID-NEW-ActionValue',
            Value   => $ConditionChangeStateDataRef->{ItemID},
        );

        $Selenium->find_element( "#SaveButton", 'css' )->VerifiedClick();

        # Verify created condition name value.
        $Self->True(
            index( $Selenium->get_page_source(), $ConditionNameRandom ) > -1,
            "$ConditionNameRandom is found",
        );

        # Delete test created change.
        my $Success = $ChangeObject->ChangeDelete(
            ChangeID => $ChangeID,
            UserID   => 1,
        );
        $Self->True(
            $Success,
            "$ChangeTitleRandom is deleted",
        );

        # Make sure cache is correct.
        $Kernel::OM->Get('Kernel::System::Cache')->CleanUp( Type => 'ITSMChange*' );
    }
);

1;
