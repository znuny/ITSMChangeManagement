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
        my $ChangeObject         = $Kernel::OM->Get('Kernel::System::ITSMChange');

        # Get change state data.
        my $ChangeStateDataRef = $GeneralCatalogObject->ItemGet(
            Class => 'ITSM::ChangeManagement::Change::State',
            Name  => 'pending pir',
        );

        # Create test change.
        my $ChangeTitleRandom = 'ITSMChange ' . $Helper->GetRandomID();
        my $ChangeID          = $ChangeObject->ChangeAdd(
            ChangeTitle   => $ChangeTitleRandom,
            Description   => "Test Description",
            Justification => "Test Justification",
            ChangeStateID => $ChangeStateDataRef->{ItemID},
            UserID        => 1,
        );
        $Self->True(
            $ChangeID,
            "Change in Pending PIR state is created",
        );

        # Create test user and login.
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
        $Selenium->execute_script(
            "\$('a[href*=\"Action=AgentITSMChangeCondition;ChangeID=$ChangeID\"]').trigger('click');"
        );

        $Selenium->WaitFor( WindowCount => 2 );
        my $Handles = $Selenium->get_window_handles();
        $Selenium->switch_to_window( $Handles->[1] );

        # Wait until page has loaded, if necessary.
        $Selenium->WaitFor(
            JavaScript =>
                'return typeof($) === "function" && $(".CancelClosePopup").length && $("button[name=AddCondition]").length;'
        );
        sleep 2;

        # Click 'Add new condition'.
        $Selenium->find_element("//button[\@name='AddCondition'][\@type='submit']")->click();
        $Selenium->WaitFor(
            JavaScript => 'return typeof($) === "function" && $("#Name").length && $("#Comment").length;'
        );

        # Create test condition.
        my $ConditionNameRandom = "Condition " . $Helper->GetRandomID();
        $Selenium->find_element( "#Name",    'css' )->send_keys($ConditionNameRandom);
        $Selenium->find_element( "#Comment", 'css' )->send_keys("SeleniumCondition");

        my $ConditionObject = $Kernel::OM->Get('Kernel::System::ITSMChange::ITSMCondition');

        # Get needed IDs.
        my $ExpresionAttributeID = $ConditionObject->AttributeLookup(
            Name => 'ImpactID',
        );
        my $ImpactDataRef = $GeneralCatalogObject->ItemGet(
            Class => 'ITSM::ChangeManagement::Impact',
            Name  => '4 high',
        );
        my $ActionAttributeID = $ConditionObject->AttributeLookup(
            Name => 'ChangeStateID'
        );
        my $ActionOperatorID = $ConditionObject->OperatorLookup(
            Name => 'set',
        );
        my $ConditionChangeStateDataRef = $GeneralCatalogObject->ItemGet(
            Class => 'ITSM::ChangeManagement::Change::State',
            Name  => 'successful',
        );

        # Add new expression.
        # In change object for test change, look for impact value of '4 high'.
        $Selenium->find_element("//button[\@name='AddExpressionButton'][\@type='submit']")->click();

        $Selenium->execute_script(
            "\$('#SaveButton')[0].scrollIntoView(true);",
        );

        $Selenium->WaitFor( JavaScript => "return \$('#ExpressionID-NEW-ObjectID option').length > 1;" );
        $Selenium->InputFieldValueSet(
            Element => '#ExpressionID-NEW-ObjectID',
            Value   => '1',
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
            Value   => '1',
        );

        # Wait for ajax response to fill next dropdown list with more than 1 value.
        $Selenium->WaitFor( JavaScript => "return \$('#ExpressionID-NEW-CompareValue option').length > 1;" );
        $Selenium->InputFieldValueSet(
            Element => '#ExpressionID-NEW-CompareValue',
            Value   => $ImpactDataRef->{ItemID},
        );

        # Add new action.
        # In change object for test change, set change state on successful.
        $Selenium->find_element("//button[\@name='AddActionButton'][\@type='submit']")->click();

        $Selenium->execute_script(
            "\$('#SaveButton')[0].scrollIntoView(true);",
        );

        $Selenium->WaitFor(
            JavaScript => 'return typeof($) === "function" && $("#ActionID-NEW-ObjectID option[value=1]").length;'
        );
        $Selenium->InputFieldValueSet(
            Element => '#ActionID-NEW-ObjectID',
            Value   => '1',
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

        $Selenium->find_element( "#SaveButton", 'css' )->click();
        $Selenium->WaitFor(
            JavaScript =>
                'return typeof($) === "function" && $(".WidgetSimple .Header h2").text() === "Conditions and Actions";'
        );

        # Check screen.
        $Selenium->find_element( "table",             'css' );
        $Selenium->find_element( "table thead tr th", 'css' );
        $Selenium->find_element( "table tbody tr td", 'css' );

        # Verify created condition name value.
        $Self->True(
            index( $Selenium->get_page_source(), $ConditionNameRandom ) > -1,
            "$ConditionNameRandom is found",
        );

        # Close and switch window.
        $Selenium->find_element( ".CancelClosePopup", 'css' )->click();
        $Selenium->WaitFor( WindowCount => 1 );
        $Selenium->switch_to_window( $Handles->[0] );

        $Selenium->WaitFor(
            JavaScript => 'return typeof($) == "function" && $(".Value:contains(\'Pending PIR\')").length;'
        );

        # Check test change state.
        $Self->True(
            $Selenium->execute_script('return $(".Value:contains(\'Pending PIR\')").length === 1;'),
            "Pending PIR state is found",
        );

        # Get general catalog impact ID '4 very high'.
        my $CatalogImpactDataRef = $GeneralCatalogObject->ItemGet(
            Class => 'ITSM::ChangeManagement::Impact',
            Name  => '4 high',
        );

        # Click to edit change and set its impact on '4 high' to trigger condition.
        $Selenium->execute_script(
            "\$('a[href*=\"Action=AgentITSMChangeEdit;ChangeID=$ChangeID\"]').trigger('click');"
        );

        $Selenium->WaitFor( WindowCount => 2 );
        $Handles = $Selenium->get_window_handles();
        $Selenium->switch_to_window( $Handles->[1] );

        # Wait until page has loaded, if necessary.
        $Selenium->WaitFor(
            JavaScript => 'return typeof($) === "function" && $("body").length && $("#ImpactID").length;'
        );
        $Selenium->VerifiedRefresh();

        $Selenium->execute_script(
            "\$('#ImpactID').val('$CatalogImpactDataRef->{ItemID}').trigger('redraw.InputField').trigger('change');"
        );

        $Selenium->WaitFor(
            JavaScript => "return \$('#ImpactID').val() == '$CatalogImpactDataRef->{ItemID}';"
        );

        $Selenium->WaitFor(
            JavaScript => 'return typeof($) === "function" && $("#SubmitChangeEdit").length;'
        );

        # Submit and change window.
        $Selenium->execute_script('$("#SubmitChangeEdit").click();');
        sleep 2;

        $Selenium->WaitFor( WindowCount => 1 );
        $Selenium->switch_to_window( $Handles->[0] );

        $Selenium->VerifiedRefresh();

        $Selenium->WaitFor(
            JavaScript =>
                'return typeof(Core) == "object" && typeof(Core.App) == "object" && Core.App.PageLoadComplete;'
        );

        $Selenium->WaitFor(
            JavaScript => 'return typeof($) === "function" && $(".Value:contains(\'Successful\')").length;'
        );

        # Check for expected change state to verify test condition.
        $Self->True(
            $Selenium->execute_script('return $(".Value:contains(\'Successful\')").length === 1;'),
            "Successful state is found",
        );

        $Selenium->execute_script(
            "\$('a[href*=\"Action=AgentITSMChangeCondition;ChangeID=$ChangeID\"]').click();"
        );

        $Selenium->WaitFor( WindowCount => 2 );
        $Handles = $Selenium->get_window_handles();
        $Selenium->switch_to_window( $Handles->[1] );

        # Wait until page has loaded, if necessary.
        $Selenium->WaitFor(
            JavaScript =>
                "return typeof(\$) === 'function' && \$('.CancelClosePopup').length && \$('a[href*=\"Action=AgentITSMChangeCondition;ChangeID=$ChangeID\"]').length;"
        );

        # click on delete icon
        my $CheckConfirmJS = <<"JAVASCRIPT";
(function () {
    window.confirm = function (message) {
        return true;
    };
}());
JAVASCRIPT
        $Selenium->execute_script($CheckConfirmJS);

        $Selenium->execute_script(
            "\$('a[href*=\"Action=AgentITSMChangeCondition;ChangeID=$ChangeID\"]').click();"
        );

        $Selenium->WaitFor(
            JavaScript =>
                "return typeof(\$) === 'function' && \$('button[value=Add]').length;"
        );

        # Close popup.
        $Selenium->find_element( "#DialogButton2", 'css' )->click();

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
