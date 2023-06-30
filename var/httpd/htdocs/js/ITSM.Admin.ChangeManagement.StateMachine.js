// --
// Copyright (C) 2021 Znuny GmbH, https://znuny.org/
// --
// This software comes with ABSOLUTELY NO WARRANTY. For details, see
// the enclosed file COPYING for license information (AGPL). If you
// did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
// --

"use strict";

var ITSM = ITSM || {};
ITSM.Admin = ITSM.Admin || {};
ITSM.Admin.ChangeManagement = ITSM.Admin.ChangeManagement || {};


/**
 * @namespace ITSM.Admin.ChangeManagement.StateMachine
 * @memberof ITSM.Admin.ChangeManagement
 * @author OTRS AG
 * @description
 *      This namespace contains the special module functions for the Change Notification
 */
ITSM.Admin.ChangeManagement.StateMachine = (function (TargetNS) {

    /**
     * @name Init
     * @memberof ITSM.Admin.ChangeManagement.StateMachine
     * @function
     * @description
            This function initializes the special module functions.
     */
    TargetNS.Init = function () {
        Core.UI.Table.InitTableFilter($("#Filter"), $("#OverviewTable"));
    };

    Core.Init.RegisterNamespace(TargetNS, 'APP_MODULE');

    return TargetNS;
}(ITSM.Admin.ChangeManagement.StateMachine || {}));
