// --
// Copyright (C) 2001-2021 OTRS AG, https://otrs.com/
// Copyright (C) 2021-2022 Znuny GmbH, https://znuny.org/
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
 * @namespace ITSM.Agent.ChangeManagement.History
 * @memberof ITSM.Agent.ChangeManagement
 * @author OTRS AG
 * @description
 *      This namespace contains the special module functions for the ChangeHistory and WorkOrderHistory screens.
 */
ITSM.Agent.ChangeManagement.History = (function (TargetNS) {

    /**
     * @name Init
     * @namespace ITSM.Agent.ChangeManagement.History
     * @function
     * @description
     *       This namespace contains the special module functions for the ChangeHistory and WorkOrderHistory screens.
     */
    TargetNS.Init = function () {

        $('a.LinkITSMWorkOrderZoomView').on('click', function () {
            var that = this;
            Core.UI.Popup.ExecuteInParentWindow(function(WindowObject) {
                WindowObject.Core.UI.Popup.FirePopupEvent('URL', { URL: $(that).attr('href')});
            });
            Core.UI.Popup.ClosePopup();
        });
    };

    Core.Init.RegisterNamespace(TargetNS, 'APP_MODULE');

    return TargetNS;
}(ITSM.Agent.ChangeManagement.History || {}));
