// --
// Copyright (C) 2001-2021 OTRS AG, https://otrs.com/\n";
// Copyright (C) 2021 Znuny GmbH, https://znuny.org/
// --
// This software comes with ABSOLUTELY NO WARRANTY. For details, see
// the enclosed file COPYING for license information (GPL). If you
// did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
// --

"use strict";

var ITSM = ITSM || {};
ITSM.Agent = ITSM.Agent || {};
ITSM.Agent.ChangeManagement = ITSM.Agent.ChangeManagement || {};


/**
 * @namespace ITSM.Agent.ChangeManagement.Condition
 * @memberof ITSM.Agent.ChangeManagement
 * @author OTRS AG
 * @description
 *      This namespace contains the special module functions for the change-management condition screen.
 */
ITSM.Agent.ChangeManagement.Condition = (function (TargetNS) {

    /**
     * @private
     * @name ExpressionActionDropdown
     * @memberof ITSM.Agent.ChangeManagement.Condition
     * @function
     * @param {Object} Event object of mouse click.
     * @description
     *      This function initializes behaviours of the condition action/expression dropdowns.
     */
     function ExpressionActionDropdown(Event) {
        var AttrID   = $(this).attr('id');
        var Sections = AttrID.match(/^(.*-\w+)-(\w+)$/i);
        var ID       = Sections[1];
        var Dropdown = Sections[2];

        var ValidDropdowns = [
            'ObjectID',
            'Selector',
            'AttributeID',
        ];

        var RefreshDropdowns = [
            ID + '-OperatorID'
        ];

        var NotSerialize,
            FormSerialized,
            URLString;

        Core.UI.InputFields.Activate();

        if (ValidDropdowns.indexOf(Dropdown) === -1) {
            return;
        }

        if (Dropdown === 'ObjectID') {
            RefreshDropdowns.unshift(ID + '-AttributeID');
            RefreshDropdowns.unshift(ID + '-Selector');
        }
        else if (Dropdown === 'Selector') {
            RefreshDropdowns.unshift(ID + '-AttributeID');
        }

        Core.AJAX.FormUpdate(
            $('#NewCondition'),
            'AJAXUpdate',
            AttrID,
            RefreshDropdowns
        );

        if (Dropdown === 'AttributeID') {

            NotSerialize = Array;
            NotSerialize.Subaction = 'Subaction';
            FormSerialized         = Core.AJAX.SerializeForm($('#NewCondition'), NotSerialize);
            URLString = [
                window.location.pathname + '?',
                FormSerialized,
                'Subaction=AJAXContentUpdate;',
                'UpdateDivName=' + ID + '-' + Event.data.AttributeIDUpdateDivName + ';',
                'ElementChanged=' + ID + '-AttributeID;'
            ].join('');

            Core.AJAX.ContentUpdate(
                $('#' + ID + '-' + Event.data.AttributeIDUpdateDivName),
                URLString,
                function () {}
            );
        }

        $(this).parent().next('td').find('select').focus();
    }

    /**
     * @private
     * @name SetSubmitAction
     * @memberof ITSM.Agent.ChangeManagement.Condition
     * @function
     * @param {Object} Event object of mouse click.
     * @description
     *      This function sets the action of the clicked button before the form is submitted.
     */
    function SetSubmitAction() {
        var $This   = $(this);
        var Actions = {
            'AddExpression': '0',
            'AddAction'    : '0',
            'Save'         : '0'
        };

        var SetAction = $This.attr('id');
        SetAction = SetAction.replace(/Button$/i, '');
        if (!Actions.hasOwnProperty(SetAction)) {
            return;
        }

        Actions[SetAction] = '1';

        $.each(Actions, function(Action, Value) {
            $('input[name=' + Action + ']').val(Value);
        });
    }

    /**
     * @name Init
     * @namespace ITSM.Agent.ChangeManagement.Condition
     * @function
     * @description
     *      This function initializes some behaviours for the add screen.
     */
    TargetNS.Init = function () {
        // Bind Expression dropdowns
        $('select[name^="ExpressionID-"]').on(
            'change.ConditionExpression',
            {
                'AttributeIDUpdateDivName': 'CompareValue-Div'
            },
            ExpressionActionDropdown
        );

        // Bind Action dropdowns
        $('select[name^="ActionID-"]').on(
            'change.ConditionAction',
            {
                'AttributeIDUpdateDivName': 'ActionValue-Div'
            },
            ExpressionActionDropdown
        );

        $('.CallForAction').on('click.SubmitAction', SetSubmitAction);

        $('.DeleteExpression').on('click.ConditionDeleteExpression', function() {
            var $Element = $(this);
            $('#DeleteDialogText').text(Core.Language.Translate("Do you really want to delete this expression?"));
            Core.UI.Dialog.ShowContentDialog(
                $('#DeleteDialogContainer'),
                Core.Language.Translate('Delete Expression'),
                '240px',
                'Center',
                true,
                [
                    {
                        Label: Core.Language.Translate("Cancel"),
                        Type: 'Secondary',
                        Function: function () {
                            Core.UI.Dialog.CloseDialog($('#DeleteDialog'));
                        }
                    },
                    {
                        Label: Core.Language.Translate("Delete"),
                        Type: 'Warning',
                        Function: function() {
                            Core.UI.Dialog.CloseDialog($('#DeleteDialog'));

                            $('#DeleteExpressionID').val($Element.attr('id').replace(/DeleteExpressionID-/, ''));
                            $Element.closest('form').submit();
                        }
                    },
                ]
            );

            return false;
        });

        $('.DeleteAction').on('click.ConditionDeleteAction', function() {
            var $Element = $(this);
            $('#DeleteDialogText').text(Core.Language.Translate("Do you really want to delete this action?"));
            Core.UI.Dialog.ShowContentDialog(
                $('#DeleteDialogContainer'),
                Core.Language.Translate('Delete Action'),
                '240px',
                'Center',
                true,
                [
                    {
                        Label: Core.Language.Translate("Cancel"),
                        Type: 'Secondary',
                        Function: function () {
                            Core.UI.Dialog.CloseDialog($('#DeleteDialog'));
                        }
                    },
                    {
                        Label: Core.Language.Translate("Delete"),
                        Type: 'Warning',
                        Function: function() {
                            Core.UI.Dialog.CloseDialog($('#DeleteDialog'));

                            $('#DeleteActionID').val($Element.attr('id').replace(/DeleteActionID-/, ''));
                            $Element.closest('form').submit();

                        }
                    },
                ]
            );

            return false;

        });

        $('.DeleteCondition').on('click.ConditionDelete', function() {
            var $Element = $(this);
            $('#DeleteDialogText').text(Core.Language.Translate("Do you really want to delete this condition?"));

            Core.UI.Dialog.ShowContentDialog(
                $('#DeleteDialogContainer'),
                Core.Language.Translate('Delete Condition'),
                '240px',
                'Center',
                true,
                [
                    {
                        Label: Core.Language.Translate("Cancel"),
                        Type: 'Secondary',
                        Function: function () {
                            Core.UI.Dialog.CloseDialog($('#DeleteDialog'));
                        }
                    },
                    {
                        Label: Core.Language.Translate("Delete"),
                        Type: 'Warning',
                        Function: function() {
                            Core.UI.Dialog.CloseDialog($('#DeleteDialog'));

                            window.location = $Element.attr('href');
                        }
                    },
                ]
            );

            return false;
        });

    };

    Core.Init.RegisterNamespace(TargetNS, 'APP_MODULE');

    return TargetNS;

}(ITSM.Agent.ChangeManagement.Condition || {}));
