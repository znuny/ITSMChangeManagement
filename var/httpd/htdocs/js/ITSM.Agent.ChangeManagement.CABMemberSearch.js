// --
// Copyright (C) 2001-2021 OTRS AG, https://otrs.com/
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
 * @namespace ITSM.Agent.ChangeManagement.CABMemberSearch
 * @memberof ITSM.Agent
 * @author OTRS AG
 * @description
 *      This namespace contains the special module functions for the CAB search.
 */
ITSM.Agent.ChangeManagement.CABMemberSearch = (function (TargetNS) {

    /**
     * @name Init
     * @memberof ITSM.Agent.ChangeManagement.CABMemberSearch
     * @function
     * @param {jQueryObject} $Element - The jQuery object of the input field with autocomplete.
     * @description
     *      This function initializes the special module functions.
     */
    TargetNS.Init = function () {

        $('.CABMemberSearch').each(function(idx, Element){

            var $Element = $(Element);

            Core.UI.Autocomplete.Init(
                $Element,
                function (Request, Response) {
                    var URL = Core.Config.Get('Baselink'), Data = {
                        Action: 'AgentITSMCABMemberSearch',
                        Term: Request.term + '*',
                        Groups: Core.Config.Get('CABAutocomplete.Groups') || '',
                        MaxResults: Core.UI.Autocomplete.GetConfig('MaxResultsDisplayed')
                    };

                    $Element.data('AutoCompleteXHR', Core.AJAX.FunctionCall(URL, Data, function (Result) {
                        var ValueData = [];
                        $Element.removeData('AutoCompleteXHR');
                        $.each(Result, function () {
                            ValueData.push({
                                label: this.UserValue + " (" + this.UserKey + ")",
                                value: this.UserValue,
                                type: this.UserType
                            });
                        });
                        Response(ValueData);
                    }));
                },
                function (Event, UI) {

                    var UserKey = UI.item.label.replace(/.*\((.*)\)$/, '$1');
                    $Element.val(UI.item.value);

                    // set hidden field UserSelected
                    $('#' + Core.App.EscapeSelector($Element.attr('id')) + 'Selected').val(UserKey);
                    $('#' + Core.App.EscapeSelector($Element.attr('id')) + 'Type').val(UI.item.type);

                    return false;
                },
                'CustomerSearch'
            );

            // On unload remove old selected data. If the page is reloaded (with F5) this data stays in the field and invokes an ajax request otherwise
            $(window).on('beforeunload.CABMemberSearch', function () {
                // escape possible colons (:) in element id because jQuery can not handle it in id attribute selectors
                $('#' + Core.App.EscapeSelector($Element.attr('id')) + 'Selected').val('');
                return;
            });

        });
    };

    Core.Init.RegisterNamespace(TargetNS, 'APP_MODULE');

    return TargetNS;
}(ITSM.Agent.ChangeManagement.CABMemberSearch || {}));
