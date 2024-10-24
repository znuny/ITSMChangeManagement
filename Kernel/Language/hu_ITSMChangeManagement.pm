# --
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::hu_ITSMChangeManagement;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # TT Template: Kernel/Output/HTML/Templates/Standard/AdminITSMChangeCIPAllocate.tt
    $Self->{Translation}->{'Manage the priority result of combinating Category ↔ Impact.'} =
        'A Kategória ↔ Hatás összetétel prioritás eredményének kezelése.';
    $Self->{Translation}->{'Category ↔ Impact ↔ Priority'} = 'Kategória ↔ Hatás ↔ Prioritás';
    $Self->{Translation}->{'Priority allocation'} = 'Prioritás lefoglalás';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AdminITSMChangeNotification.tt
    $Self->{Translation}->{'Add Notification Rule'} = 'Értesítési szabály hozzáadása';
    $Self->{Translation}->{'Filter for notification rules'} = '';
    $Self->{Translation}->{'ITSM ChangeManagement Notification Management'} = 'ITSM változásmenedzsment értesítés kezelés';
    $Self->{Translation}->{'Edit Notification Rule'} = 'Értesítési szabály szerkesztése';
    $Self->{Translation}->{'A notification should have a name!'} = 'Az értesítésnek rendelkeznie kell egy névvel!';
    $Self->{Translation}->{'Name is required.'} = 'A név kötelező.';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AdminITSMStateMachine.tt
    $Self->{Translation}->{'Select a catalog class!'} = 'Válasszon egy katalógusosztályt!';
    $Self->{Translation}->{'A catalog class is required!'} = 'A katalógusosztály kötelező!';
    $Self->{Translation}->{'Add a state transition'} = 'Egy állapotátmenet hozzáadása';
    $Self->{Translation}->{'Admin State Machine'} = 'Adminisztrátori állapotgép';
    $Self->{Translation}->{'Catalog Class'} = 'Katalógusosztály';
    $Self->{Translation}->{'Object Name'} = 'Objektumnév';
    $Self->{Translation}->{'Overview over state transitions for'} = 'Állapotátmenetek áttekintése ennél:';
    $Self->{Translation}->{'Delete this state transition'} = 'Az állapotátmenet törlése';
    $Self->{Translation}->{'Add a new state transition for'} = 'Egy új állapotátmenet hozzáadása ehhez:';
    $Self->{Translation}->{'Please select a state!'} = 'Válasszon egy állapotot!';
    $Self->{Translation}->{'Please select a next state!'} = 'Válasszon egy következő állapotot!';
    $Self->{Translation}->{'Edit a state transition for'} = 'Egy állapotátmenet szerkesztése ennél:';
    $Self->{Translation}->{'Do you really want to delete the state transition'} = 'Valóban törölni szeretné az állapotátmenetet';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeAdd.tt
    $Self->{Translation}->{'Add Change'} = 'Változás hozzáadása';
    $Self->{Translation}->{'Justification'} = 'Indoklás';
    $Self->{Translation}->{'Input invalid.'} = 'Érvénytelen bemenet.';
    $Self->{Translation}->{'Requested Date'} = 'Kért dátum';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeAddFromTemplate.tt
    $Self->{Translation}->{'Select Change Template'} = 'Változássablon kiválasztása';
    $Self->{Translation}->{'Time type'} = 'Időtípus';
    $Self->{Translation}->{'Invalid time type.'} = 'Érvénytelen időtípus.';
    $Self->{Translation}->{'New time'} = 'Új idő';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeCABTemplate.tt
    $Self->{Translation}->{'Save Change CAB as template'} = 'Változás CAB mentése sablonként';
    $Self->{Translation}->{'go to involved persons screen'} = 'ugrás a résztvevő személyek képernyőjéhez';
    $Self->{Translation}->{'Invalid Name'} = 'Érvénytelen név';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeCondition.tt
    $Self->{Translation}->{'Conditions and Actions'} = 'Feltételek és műveletek';
    $Self->{Translation}->{'Delete Condition'} = 'Feltétel törlése';
    $Self->{Translation}->{'Add new condition'} = 'Új feltétel hozzáadása';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeConditionEdit.tt
    $Self->{Translation}->{'Edit Condition'} = 'Feltétel szerkesztése';
    $Self->{Translation}->{'Need a valid name.'} = 'Egy érvényes név szükséges.';
    $Self->{Translation}->{'A valid name is needed.'} = 'Egy érvényes név szükséges.';
    $Self->{Translation}->{'Duplicate name:'} = 'Név kettőzése:';
    $Self->{Translation}->{'This name is already used by another condition.'} = 'Ezt a nevet már egy másik feltétel használja.';
    $Self->{Translation}->{'Matching'} = 'Illeszkedés';
    $Self->{Translation}->{'Any expression (OR)'} = 'Bármely kifejezés (VAGY)';
    $Self->{Translation}->{'All expressions (AND)'} = 'Minden kifejezés (ÉS)';
    $Self->{Translation}->{'Expressions'} = 'Kifejezések';
    $Self->{Translation}->{'Selector'} = 'Kiválasztó';
    $Self->{Translation}->{'Operator'} = 'Művelet';
    $Self->{Translation}->{'Delete Expression'} = 'Kifejezés törlése';
    $Self->{Translation}->{'No Expressions found.'} = 'Nem találhatók kifejezések.';
    $Self->{Translation}->{'Add new expression'} = 'Új kifejezés hozzáadása';
    $Self->{Translation}->{'Delete Action'} = 'Művelet törlése';
    $Self->{Translation}->{'No Actions found.'} = 'Nem találhatók műveletek.';
    $Self->{Translation}->{'Add new action'} = 'Új művelet hozzáadása';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeDelete.tt
    $Self->{Translation}->{'Do you really want to delete this change?'} = 'Valóban törölni szeretné ezt a változást?';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeEdit.tt
    $Self->{Translation}->{'Edit %s%s'} = '%s%s szerkesztése';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeHistory.tt
    $Self->{Translation}->{'History of %s%s'} = '%s%s előzményei';
    $Self->{Translation}->{'Workorder'} = 'Munkamegrendelés';
    $Self->{Translation}->{'Createtime'} = 'Létrehozás ideje';
    $Self->{Translation}->{'Show details'} = 'Részletek megjelenítése';
    $Self->{Translation}->{'Show workorder'} = 'Munkamegrendelés megjelenítése';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeHistoryZoom.tt
    $Self->{Translation}->{'Detailed history information of %s'} = '%s részletes előzményinformációi';
    $Self->{Translation}->{'Modified'} = 'Módosítva';
    $Self->{Translation}->{'Old Value'} = 'Régi érték';
    $Self->{Translation}->{'New Value'} = 'Új érték';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeInvolvedPersons.tt
    $Self->{Translation}->{'Edit Involved Persons of %s%s'} = '%s%s résztvevő személyeinek szerkesztése';
    $Self->{Translation}->{'Involved Persons'} = 'Résztvevő személyek';
    $Self->{Translation}->{'ChangeManager'} = 'Változásmenedzser';
    $Self->{Translation}->{'User invalid.'} = 'Érvénytelen felhasználó.';
    $Self->{Translation}->{'ChangeBuilder'} = 'Változás-összeállító';
    $Self->{Translation}->{'Change Advisory Board'} = 'Változásmenedzsment-tanács';
    $Self->{Translation}->{'CAB Template'} = 'CAB sablon';
    $Self->{Translation}->{'Apply Template'} = 'Sablon alkalmazása';
    $Self->{Translation}->{'NewTemplate'} = 'Új sablon';
    $Self->{Translation}->{'Save this CAB as template'} = 'A CAB mentése sablonként';
    $Self->{Translation}->{'Add to CAB'} = 'Hozzáadás CAB-hoz';
    $Self->{Translation}->{'Invalid User'} = 'Érvénytelen felhasználó';
    $Self->{Translation}->{'Current CAB'} = 'Jelenlegi CAB';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeOverviewNavBar.tt
    $Self->{Translation}->{'Context Settings'} = 'Környezet beállítások';
    $Self->{Translation}->{'Changes per page'} = 'Oldalankénti változások';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeOverviewSmall.tt
    $Self->{Translation}->{'Workorder Title'} = 'Munkamegrendelés-cím';
    $Self->{Translation}->{'Change Title'} = 'Változáscím';
    $Self->{Translation}->{'Workorder Agent'} = 'Munkamegrendelés-ügyintéző';
    $Self->{Translation}->{'Change Builder'} = 'Változás-összeállító';
    $Self->{Translation}->{'Change Manager'} = 'Változásmenedzser';
    $Self->{Translation}->{'Workorders'} = 'Munkamegrendelések';
    $Self->{Translation}->{'Change State'} = 'Változásállapot';
    $Self->{Translation}->{'Workorder State'} = 'Munkamegrendelés-állapot';
    $Self->{Translation}->{'Workorder Type'} = 'Munkamegrendelés-típus';
    $Self->{Translation}->{'Requested Time'} = 'Kért idő';
    $Self->{Translation}->{'Planned Start Time'} = 'Tervezett kezdési idő';
    $Self->{Translation}->{'Planned End Time'} = 'Tervezett befejezési idő';
    $Self->{Translation}->{'Actual Start Time'} = 'Tényleges kezdési idő';
    $Self->{Translation}->{'Actual End Time'} = 'Tényleges befejezési idő';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeReset.tt
    $Self->{Translation}->{'Do you really want to reset this change?'} = 'Valóban vissza szeretné állítani ezt a változást?';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeSearch.tt
    $Self->{Translation}->{'(e.g. 10*5155 or 105658*)'} = '(például 10*5155 vagy 105658*)';
    $Self->{Translation}->{'CAB Agent'} = 'CAB-ügyintéző';
    $Self->{Translation}->{'e.g.'} = 'például';
    $Self->{Translation}->{'CAB Customer'} = 'CAB-ügyfél';
    $Self->{Translation}->{'ITSM Change'} = 'ITSM változás';
    $Self->{Translation}->{'ITSM Workorder Instruction'} = 'ITSM munkamegrendelés utasítás';
    $Self->{Translation}->{'ITSM Workorder Report'} = 'ITSM munkamegrendelés jelentés';
    $Self->{Translation}->{'ITSM Change Priority'} = 'ITSM változás prioritás';
    $Self->{Translation}->{'ITSM Change Impact'} = 'ITSM változás hatás';
    $Self->{Translation}->{'Change Category'} = 'Változáskategória';
    $Self->{Translation}->{'(before/after)'} = '(előtt/után)';
    $Self->{Translation}->{'(between)'} = '(között)';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeTemplate.tt
    $Self->{Translation}->{'Save Change as Template'} = 'Változás mentése sablonként';
    $Self->{Translation}->{'A template should have a name!'} = 'A sablonnak rendelkeznie kell egy névvel!';
    $Self->{Translation}->{'The template name is required.'} = 'A sablonnév kötelező.';
    $Self->{Translation}->{'Reset States'} = 'Állapotok visszaállítása';
    $Self->{Translation}->{'Overwrite original template'} = 'Eredeti sablon felülírása';
    $Self->{Translation}->{'Delete original change'} = 'Eredeti változás törlése';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeTimeSlot.tt
    $Self->{Translation}->{'Move Time Slot'} = 'Időrés áthelyezése';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeZoom.tt
    $Self->{Translation}->{'Change Information'} = 'Változás információk';
    $Self->{Translation}->{'Planned Effort'} = 'Tervezett ráfordítás';
    $Self->{Translation}->{'Accounted Time'} = 'Elszámolt idő';
    $Self->{Translation}->{'Change Initiator(s)'} = 'Változáskezdeményezők';
    $Self->{Translation}->{'CAB'} = 'CAB';
    $Self->{Translation}->{'Last changed'} = 'Utolsó módosítás';
    $Self->{Translation}->{'Last changed by'} = 'Utoljára módosította';
    $Self->{Translation}->{'To open links in the following description blocks, you might need to press Ctrl or Cmd or Shift key while clicking the link (depending on your browser and OS).'} =
        'A következő leírási blokkokban lévő hivatkozások megnyitásához lehetséges, hogy le kell nyomnia a Ctrl vagy Cmd vagy Shift billentyűt, miközben a hivatkozásra kattint (a böngészőjétől és operációs rendszerétől függően).';
    $Self->{Translation}->{'Download Attachment'} = 'Melléklet letöltése';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMTemplateEditCAB.tt
    $Self->{Translation}->{'Edit CAB Template'} = 'CAB sablon szerkesztése';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMTemplateEditContent.tt
    $Self->{Translation}->{'This will create a new change from this template, so you can edit and save it.'} =
        'Ez létre fog hozni egy új változást ebből a sablonból, így szerkesztheti és elmentheti azt.';
    $Self->{Translation}->{'The new change will be deleted automatically after it has been saved as template.'} =
        'Az új változás automatikusan törölve lesz, miután mentésre került sablonként.';
    $Self->{Translation}->{'This will create a new workorder from this template, so you can edit and save it.'} =
        'Ez létre fog hozni egy új munkamegrendelést ebből a sablonból, így szerkesztheti és elmentheti azt.';
    $Self->{Translation}->{'A temporary change will be created which contains the workorder.'} =
        'Egy ideiglenes változás lesz létrehozva, amely tartalmazza a munkamegrendelést.';
    $Self->{Translation}->{'The temporary change and new workorder will be deleted automatically after the workorder has been saved as template.'} =
        'Az ideiglenes változás és az új munkamegrendelés automatikusan törölve lesz, miután a munkamegrendelés mentésre került sablonként.';
    $Self->{Translation}->{'Do you want to proceed?'} = 'Szeretné folytatni?';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMTemplateOverviewSmall.tt
    $Self->{Translation}->{'Template ID'} = 'Sablon-azonosító';
    $Self->{Translation}->{'Edit Content'} = 'Tartalom szerkesztése';
    $Self->{Translation}->{'Create by'} = 'Létrehozta';
    $Self->{Translation}->{'Change by'} = 'Módosította';
    $Self->{Translation}->{'Change Time'} = 'Változás ideje';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderAdd.tt
    $Self->{Translation}->{'Add Workorder to %s%s'} = 'Munkamegrendelés hozzáadása ehhez: %s%s';
    $Self->{Translation}->{'Instruction'} = 'Utasítás';
    $Self->{Translation}->{'Invalid workorder type.'} = 'Érvénytelen munkamegrendelés-típus.';
    $Self->{Translation}->{'The planned start time must be before the planned end time!'} = 'A tervezett kezdési időnek a tervezett befejezési idő előtt kell lennie!';
    $Self->{Translation}->{'Invalid format.'} = 'Érvénytelen formátum.';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderAddFromTemplate.tt
    $Self->{Translation}->{'Select Workorder Template'} = 'Munkamegrendelés-sablon kiválasztása';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderAgent.tt
    $Self->{Translation}->{'Edit Workorder Agent of %s%s'} = '%s%s munkamegrendelés-ügyintézőjének szerkesztése';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderDelete.tt
    $Self->{Translation}->{'Do you really want to delete this workorder?'} = 'Valóban törölni szeretné ezt a munkamegrendelést?';
    $Self->{Translation}->{'You can not delete this Workorder. It is used in at least one Condition!'} =
        'Nem törölheti ezt a munkamegrendelést. Legalább egy feltételben használják!';
    $Self->{Translation}->{'This Workorder is used in the following Condition(s)'} = 'Ezt a munkamegrendelést a következő feltételekben használják';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderEdit.tt
    $Self->{Translation}->{'Edit %s%s-%s'} = '%s%s-%s szerkesztése';
    $Self->{Translation}->{'Move following workorders accordingly'} = 'A követő munkamegrendelések áthelyezése eszerint';
    $Self->{Translation}->{'If the planned end time of this workorder is changed, the planned start times of all following workorders will be changed accordingly'} =
        'Ha ennek a munkamegrendelésnek megváltozik a tervezett befejezési ideje, akkor az összes azt követő munkamegrendelés tervezett kezdési ideje is meg fog változni eszerint';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderHistory.tt
    $Self->{Translation}->{'History of %s%s-%s'} = '%s%s-%s előzményei';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderReport.tt
    $Self->{Translation}->{'Edit Report of %s%s-%s'} = '%s%s-%s jelentésének szerkesztése';
    $Self->{Translation}->{'Report'} = 'Jelentés';
    $Self->{Translation}->{'The actual start time must be before the actual end time!'} = 'A tényleges kezdési időnek a tényleges befejezési idő előtt kell lennie!';
    $Self->{Translation}->{'The actual start time must be set, when the actual end time is set!'} =
        'A tényleges kezdési időnek beállítva kell lennie, amikor a tényleges befejezési idő be van állítva!';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderTake.tt
    $Self->{Translation}->{'Current Agent'} = 'Jelenlegi ügyintéző';
    $Self->{Translation}->{'Do you really want to take this workorder?'} = 'Valóban fel szeretné vennie ezt a munkamegrendelést?';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderTemplate.tt
    $Self->{Translation}->{'Save Workorder as Template'} = 'Munkamegrendelés mentése sablonként';
    $Self->{Translation}->{'Delete original workorder (and surrounding change)'} = 'Eredeti munkamegrendelés (és a környező változás) törlése';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderZoom.tt
    $Self->{Translation}->{'Workorder Information'} = 'Munkamegrendelés-információk';

    # Perl Module: Kernel/Modules/AdminITSMChangeNotification.pm
    $Self->{Translation}->{'Notification Added!'} = 'Értesítés hozzáadva!';
    $Self->{Translation}->{'Unknown notification %s!'} = 'Ismeretlen értesítés: %s!';
    $Self->{Translation}->{'There was an error creating the notification.'} = 'Hiba történt az értesítés létrehozásakor.';

    # Perl Module: Kernel/Modules/AdminITSMStateMachine.pm
    $Self->{Translation}->{'State Transition Updated!'} = 'Állapotátmenet frissítve!';
    $Self->{Translation}->{'State Transition Added!'} = 'Állapotátmenet hozzáadva!';

    # Perl Module: Kernel/Modules/AgentITSMChange.pm
    $Self->{Translation}->{'ITSM Changes'} = 'ITSM változások';

    # Perl Module: Kernel/Modules/AgentITSMChangeAdd.pm
    $Self->{Translation}->{'Ticket with TicketID %s does not exist!'} = 'A(z) %s jegyazonosítóval rendelkező jegy nem létezik!';
    $Self->{Translation}->{'Missing sysconfig option "ITSMChange::AddChangeLinkTicketTypes"!'} =
        'Hiányzó „ITSMChange::AddChangeLinkTicketTypes” rendszerbeállítási lehetőség!';
    $Self->{Translation}->{'Was not able to add change!'} = 'Nem sikerült a változás hozzáadása!';

    # Perl Module: Kernel/Modules/AgentITSMChangeAddFromTemplate.pm
    $Self->{Translation}->{'Was not able to create change from template!'} = 'Nem sikerült a változás létrehozása sablonból!';

    # Perl Module: Kernel/Modules/AgentITSMChangeCABTemplate.pm
    $Self->{Translation}->{'No ChangeID is given!'} = 'Nincs változásazonosító megadva!';
    $Self->{Translation}->{'No change found for changeID %s.'} = 'Nem található változás a(z) %s változásazonosítóhoz.';
    $Self->{Translation}->{'The CAB of change "%s" could not be serialized.'} = 'A(z) „%s” változás CAB-ját nem sikerült sorosítani.';
    $Self->{Translation}->{'Could not add the template.'} = 'Nem sikerült hozzáadni a sablont.';

    # Perl Module: Kernel/Modules/AgentITSMChangeCondition.pm
    $Self->{Translation}->{'Change "%s" not found in database!'} = 'A(z) „%s” változás nem található az adatbázisban!';
    $Self->{Translation}->{'Could not delete ConditionID %s!'} = 'Nem sikerült törölni a(z) %s feltételazonosítót!';

    # Perl Module: Kernel/Modules/AgentITSMChangeConditionEdit.pm
    $Self->{Translation}->{'No %s is given!'} = 'Nincs %s megadva!';
    $Self->{Translation}->{'Could not create new condition!'} = 'Nem sikerült létrehozni új feltételt!';
    $Self->{Translation}->{'Could not update ConditionID %s!'} = 'Nem sikerült frissíteni a(z) %s feltételazonosítót!';
    $Self->{Translation}->{'Could not update ExpressionID %s!'} = 'Nem sikerült frissíteni a(z) %s kifejezés-azonosítót!';
    $Self->{Translation}->{'Could not add new Expression!'} = 'Nem sikerült hozzáadni új kifejezést!';
    $Self->{Translation}->{'Could not update ActionID %s!'} = 'Nem sikerült frissíteni a(z) %s műveletazonosítót!';
    $Self->{Translation}->{'Could not add new Action!'} = 'Nem sikerült hozzáadni új műveletet!';
    $Self->{Translation}->{'Could not delete ExpressionID %s!'} = 'Nem sikerült törölni a(z) %s kifejezés-azonosítót!';
    $Self->{Translation}->{'Could not delete ActionID %s!'} = 'Nem sikerült törölni a(z) %s műveletazonosítót!';
    $Self->{Translation}->{'Error: Unknown field type "%s"!'} = 'Hiba: ismeretlen „%s” mezőtípus!';
    $Self->{Translation}->{'ConditionID %s does not belong to the given ChangeID %s!'} = 'A(z) %s feltételazonosító nem tartozik a megadott %s változásazonosítóhoz!';

    # Perl Module: Kernel/Modules/AgentITSMChangeDelete.pm
    $Self->{Translation}->{'Change "%s" does not have an allowed change state to be deleted!'} =
        'A(z) „%s” változásnak nincs olyan megengedett változásállapota, amelyet törölni lehetne!';
    $Self->{Translation}->{'Was not able to delete the changeID %s!'} = 'Nem sikerült a(z) %s változásazonosító törlése!';

    # Perl Module: Kernel/Modules/AgentITSMChangeEdit.pm
    $Self->{Translation}->{'Was not able to update Change!'} = 'Nem sikerült a változás frissítése!';

    # Perl Module: Kernel/Modules/AgentITSMChangeHistory.pm
    $Self->{Translation}->{'Can\'t show history, as no ChangeID is given!'} = 'Nem lehet megjeleníteni az előzményeket, mivel nincs változásazonosító megadva!';
    $Self->{Translation}->{'Change "%s" not found in the database!'} = 'A(z) „%s” változás nem található az adatbázisban!';
    $Self->{Translation}->{'Unknown type "%s" encountered!'} = 'Ismeretlen típus fordult elő: %s!';
    $Self->{Translation}->{'Change History'} = 'Változástörténet';

    # Perl Module: Kernel/Modules/AgentITSMChangeHistoryZoom.pm
    $Self->{Translation}->{'Can\'t show history zoom, no HistoryEntryID is given!'} = 'Nem lehet megjeleníteni az előzménynagyítást, nincs előzménybejegyzés-azonosító megadva!';
    $Self->{Translation}->{'HistoryEntry "%s" not found in database!'} = 'A(z) „%s” előzménybejegyzés nem található az adatbázisban!';

    # Perl Module: Kernel/Modules/AgentITSMChangeInvolvedPersons.pm
    $Self->{Translation}->{'Was not able to update Change CAB for Change %s!'} = 'Nem sikerült a változás CAB frissítése a(z) %s változásnál!';
    $Self->{Translation}->{'Was not able to update Change %s!'} = 'Nem sikerült a(z) %s változás frissítése!';

    # Perl Module: Kernel/Modules/AgentITSMChangeMyCAB.pm
    $Self->{Translation}->{'My CAB'} = '';

    # Perl Module: Kernel/Modules/AgentITSMChangeMyChanges.pm
    $Self->{Translation}->{'My Changes'} = 'Saját változások';

    # Perl Module: Kernel/Modules/AgentITSMChangeMyWorkOrders.pm
    $Self->{Translation}->{'My Workorders'} = '';

    # Perl Module: Kernel/Modules/AgentITSMChangePIR.pm
    $Self->{Translation}->{'PIR'} = 'PIR';

    # Perl Module: Kernel/Modules/AgentITSMChangePSA.pm
    $Self->{Translation}->{'PSA'} = 'PSA';

    # Perl Module: Kernel/Modules/AgentITSMChangePrint.pm
    $Self->{Translation}->{'WorkOrder "%s" not found in database!'} = 'A(z) „%s” munkamegrendelés nem található az adatbázisban!';
    $Self->{Translation}->{'Can\'t create output, as the workorder is not attached to a change!'} =
        'Nem lehet létrehozni a kimenetet, mivel a munkamegrendelés nincs csatolva egy változáshoz!';
    $Self->{Translation}->{'Can\'t create output, as no ChangeID is given!'} = 'Nem lehet létrehozni a kimenetet, mivel nincs változásazonosító megadva!';
    $Self->{Translation}->{'unknown change title'} = 'ismeretlen változáscím';
    $Self->{Translation}->{'ITSM Workorder'} = 'ITSM munkamegrendelés';
    $Self->{Translation}->{'WorkOrderNumber'} = 'Munkamegrendelés-szám';
    $Self->{Translation}->{'WorkOrderTitle'} = 'Munkamegrendelés-cím';
    $Self->{Translation}->{'unknown workorder title'} = 'ismeretlen munkamegrendelés-cím';
    $Self->{Translation}->{'ChangeState'} = 'Változásállapot';
    $Self->{Translation}->{'PlannedEffort'} = 'Tervezett ráfordítás';
    $Self->{Translation}->{'CAB Agents'} = 'CAB ügyintézők';
    $Self->{Translation}->{'CAB Customers'} = 'CAB ügyfelek';
    $Self->{Translation}->{'RequestedTime'} = 'Kért idő';
    $Self->{Translation}->{'PlannedStartTime'} = 'Tervezett kezdési idő';
    $Self->{Translation}->{'PlannedEndTime'} = 'Tervezett befejezési idő';
    $Self->{Translation}->{'ActualStartTime'} = 'Tényleges kezdési idő';
    $Self->{Translation}->{'ActualEndTime'} = 'Tényleges befejezési idő';
    $Self->{Translation}->{'ChangeTime'} = 'Változás ideje';
    $Self->{Translation}->{'ChangeNumber'} = 'Változásszám';
    $Self->{Translation}->{'WorkOrderState'} = 'Munkamegrendelés-állapot';
    $Self->{Translation}->{'WorkOrderType'} = 'Munkamegrendelés-típus';
    $Self->{Translation}->{'WorkOrderAgent'} = 'Munkamegrendelés-ügyintéző';
    $Self->{Translation}->{'ITSM Workorder Overview (%s)'} = 'ITSM munkamegrendelés áttekintés (%s)';

    # Perl Module: Kernel/Modules/AgentITSMChangeReset.pm
    $Self->{Translation}->{'Was not able to reset WorkOrder %s of Change %s!'} = 'Nem sikerült a(z) %s munkamegrendelés visszaállítása a(z) %s változásnál!';
    $Self->{Translation}->{'Was not able to reset Change %s!'} = 'Nem sikerült a(z) %s változás visszaállítása!';

    # Perl Module: Kernel/Modules/AgentITSMChangeSchedule.pm
    $Self->{Translation}->{'Change Schedule'} = 'Változtatási ütemterv';

    # Perl Module: Kernel/Modules/AgentITSMChangeSearch.pm
    $Self->{Translation}->{'Change Search'} = 'Változáskeresés';
    $Self->{Translation}->{'ChangeTitle'} = 'Változáscím';
    $Self->{Translation}->{'WorkOrders'} = 'Munkamegrendelések';
    $Self->{Translation}->{'Change Search Result'} = 'Változáskeresési eredmények';
    $Self->{Translation}->{'Change Number'} = 'Változásszám';
    $Self->{Translation}->{'Work Order Title'} = 'Munkamegrendelés-cím';
    $Self->{Translation}->{'Change Description'} = 'Változásleírás';
    $Self->{Translation}->{'Change Justification'} = 'Változásindoklás';
    $Self->{Translation}->{'WorkOrder Instruction'} = 'Munkamegrendelés-utasítás';
    $Self->{Translation}->{'WorkOrder Report'} = 'Munkamegrendelés-jelentés';
    $Self->{Translation}->{'Change Priority'} = 'Változásprioritás';
    $Self->{Translation}->{'Change Impact'} = 'Változáshatás';
    $Self->{Translation}->{'Created By'} = 'Létrehozta';
    $Self->{Translation}->{'WorkOrder State'} = 'Munkamegrendelés-állapot';
    $Self->{Translation}->{'WorkOrder Type'} = 'Munkamegrendelés-típus';
    $Self->{Translation}->{'WorkOrder Agent'} = 'Munkamegrendelés-ügyintéző';
    $Self->{Translation}->{'before'} = 'előtt';

    # Perl Module: Kernel/Modules/AgentITSMChangeTemplate.pm
    $Self->{Translation}->{'The change "%s" could not be serialized.'} = 'A(z) „%s” változást nem sikerült sorosítani.';
    $Self->{Translation}->{'Could not update the template "%s".'} = 'Nem sikerült frissíteni a(z) „%s” sablont.';
    $Self->{Translation}->{'Could not delete change "%s".'} = 'Nem sikerült törölni a(z) „%s” változást.';

    # Perl Module: Kernel/Modules/AgentITSMChangeTimeSlot.pm
    $Self->{Translation}->{'The change can\'t be moved, as it has no workorders.'} = 'A változást nem lehet áthelyezni, mivel nincsenek munkamegrendelései.';
    $Self->{Translation}->{'Add a workorder first.'} = 'Először adjon hozzá egy munkamegrendelést.';
    $Self->{Translation}->{'Can\'t move a change which already has started!'} = 'Nem lehet áthelyezni egy olyan változást, amely már elkezdődött!';
    $Self->{Translation}->{'Please move the individual workorders instead.'} = 'Helyette helyezze át az egyes munkamegrendeléseket.';
    $Self->{Translation}->{'The current %s could not be determined.'} = 'A jelenlegi %s meghatározása nem sikerült.';
    $Self->{Translation}->{'The %s of all workorders has to be defined.'} = 'Az összes munkamegrendelés %s típusát meg kell határozni.';
    $Self->{Translation}->{'Was not able to move time slot for workorder #%s!'} = 'Nem sikerült az időrés áthelyezése a(z) #%s munkamegrendelésnél!';

    # Perl Module: Kernel/Modules/AgentITSMTemplateDelete.pm
    $Self->{Translation}->{'You need %s permission!'} = '%s jogosultságra van szüksége!';
    $Self->{Translation}->{'No TemplateID is given!'} = 'Nincs sablonazonosító megadva!';
    $Self->{Translation}->{'Template "%s" not found in database!'} = 'A(z) „%s” sablon nem található az adatbázisban!';
    $Self->{Translation}->{'Was not able to delete the template %s!'} = 'Nem sikerült a(z) %s sablon törlése!';

    # Perl Module: Kernel/Modules/AgentITSMTemplateEdit.pm
    $Self->{Translation}->{'Was not able to update Template %s!'} = 'Nem sikerült a(z) %s sablon frissítése!';

    # Perl Module: Kernel/Modules/AgentITSMTemplateEditCAB.pm
    $Self->{Translation}->{'Was not able to update Template "%s"!'} = 'Nem sikerült a(z) „%s” sablon frissítése!';

    # Perl Module: Kernel/Modules/AgentITSMTemplateEditContent.pm
    $Self->{Translation}->{'Was not able to create change!'} = 'Nem sikerült a változás létrehozása!';
    $Self->{Translation}->{'Was not able to create workorder from template!'} = 'Nem sikerült a munkamegrendelés létrehozása sablonból!';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderAdd.pm
    $Self->{Translation}->{'You need %s permissions on the change!'} = '%s jogosultságokra van szüksége a változáson!';
    $Self->{Translation}->{'Was not able to add workorder!'} = 'Nem sikerült a munkamegrendelés hozzáadása!';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderAgent.pm
    $Self->{Translation}->{'No WorkOrderID is given!'} = 'Nincs munkamegrendelés-azonosító megadva!';
    $Self->{Translation}->{'Was not able to set the workorder agent of the workorder "%s" to empty!'} =
        'Nem sikerült a(z) „%s” munkamegrendelés ügyintézőjének beállítása üresre!';
    $Self->{Translation}->{'Was not able to update the workorder "%s"!'} = 'Nem sikerült a(z) „%s” munkamegrendelés frissítése!';
    $Self->{Translation}->{'Could not find Change for WorkOrder %s!'} = 'Nem található változás a(z) %s munkamegrendeléshez!';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderDelete.pm
    $Self->{Translation}->{'Was not able to delete the workorder %s!'} = 'Nem sikerült a(z) %s munkamegrendelés törlése!';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderEdit.pm
    $Self->{Translation}->{'Was not able to update WorkOrder %s!'} = 'Nem sikerült a(z) %s munkamegrendelés frissítése!';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderHistory.pm
    $Self->{Translation}->{'Can\'t show history, as no WorkOrderID is given!'} = 'Nem lehet megjeleníteni az előzményeket, mivel nincs munkamegrendelés-azonosító megadva!';
    $Self->{Translation}->{'WorkOrder "%s" not found in the database!'} = 'A(z) „%s” munkamegrendelés nem található az adatbázisban!';
    $Self->{Translation}->{'WorkOrder History'} = 'Munkamegrendelés-előzmények';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderHistoryZoom.pm
    $Self->{Translation}->{'History entry "%s" not found in the database!'} = 'A(z) „%s” előzménybejegyzés nem található az adatbázisban!';
    $Self->{Translation}->{'WorkOrder History Zoom'} = 'Munkamegrendelés előzményeinek nagyítása';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderTake.pm
    $Self->{Translation}->{'Was not able to take the workorder %s!'} = 'Nem sikerült a(z) %s munkamegrendelés felvétele!';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderTemplate.pm
    $Self->{Translation}->{'The workorder "%s" could not be serialized.'} = 'A(z) „%s” munkamegrendelést nem sikerült sorosítani.';

    # Perl Module: Kernel/Output/HTML/Layout/ITSMChange.pm
    $Self->{Translation}->{'Need config option %s!'} = 'A(z) %s konfigurációs beállítás szükséges!';
    $Self->{Translation}->{'Config option %s needs to be a HASH ref!'} = 'A(z) %s konfigurációs beállításnak kivonat-hivatkozásnak kell lennie!';
    $Self->{Translation}->{'No config option found for the view "%s"!'} = 'Nem található konfigurációs beállítás a(z) „%s” nézethez!';
    $Self->{Translation}->{'Title: %s | Type: %s'} = 'Cím: %s | Típus: %s';

    # Perl Module: Kernel/Output/HTML/ToolBar/MyCAB.pm
    $Self->{Translation}->{'My CABs'} = 'Saját CAB-ok';

    # Perl Module: Kernel/Output/HTML/ToolBar/MyWorkOrders.pm
    $Self->{Translation}->{'My Work Orders'} = 'Saját munkamegrendelések';

    # Perl Module: Kernel/System/ITSMChange/History.pm
    $Self->{Translation}->{'%s: %s'} = '%s: %s';
    $Self->{Translation}->{'New Action (ID=%s)'} = 'Új művelet (azonosító = %s)';
    $Self->{Translation}->{'Action (ID=%s) deleted'} = 'Művelet (azonosító = %s) törölve';
    $Self->{Translation}->{'All Actions of Condition (ID=%s) deleted'} = 'A feltétel (azonosító = %s) összes művelete törölve';
    $Self->{Translation}->{'Action (ID=%s) executed: %s'} = 'Művelet (azonosító = %s) végrehajtva: %s';
    $Self->{Translation}->{'%s (Action ID=%s): (new=%s, old=%s)'} = '%s (művelet-azonosító = %s): (új = %s, régi = %s)';
    $Self->{Translation}->{'Change (ID=%s) reached actual end time.'} = 'A változás (azonosító = %s) elérte a tényleges befejezési időt.';
    $Self->{Translation}->{'Change (ID=%s) reached actual start time.'} = 'A változás (azonosító = %s) elérte a tényleges kezdési időt.';
    $Self->{Translation}->{'New Change (ID=%s)'} = 'Új változás (azonosító = %s)';
    $Self->{Translation}->{'New Attachment: %s'} = 'Új melléklet: %s';
    $Self->{Translation}->{'Deleted Attachment %s'} = 'Melléklet törölve: %s';
    $Self->{Translation}->{'CAB Deleted %s'} = 'CAB törölve: %s';
    $Self->{Translation}->{'%s: (new=%s, old=%s)'} = '%s: (új = %s, régi = %s)';
    $Self->{Translation}->{'Link to %s (ID=%s) added'} = 'Kapcsolat ehhez: %s (azonosító = %s) hozzáadva';
    $Self->{Translation}->{'Link to %s (ID=%s) deleted'} = 'Kapcsolat ehhez: %s (azonosító = %s) törölve';
    $Self->{Translation}->{'Notification sent to %s (Event: %s)'} = 'Értesítés elküldve ide: %s (esemény: %s)';
    $Self->{Translation}->{'Change (ID=%s) reached planned end time.'} = 'A változás (azonosító = %s) elérte a tervezett befejezési időt.';
    $Self->{Translation}->{'Change (ID=%s) reached planned start time.'} = 'A változás (azonosító = %s) elérte a tervezett kezdési időt.';
    $Self->{Translation}->{'Change (ID=%s) reached requested time.'} = 'A változás (azonosító = %s) elérte a kért időt.';
    $Self->{Translation}->{'New Condition (ID=%s)'} = 'Új feltétel (azonosító = %s)';
    $Self->{Translation}->{'Condition (ID=%s) deleted'} = 'Feltétel (azonosító = %s) törölve';
    $Self->{Translation}->{'All Conditions of Change (ID=%s) deleted'} = 'A változás (azonosító = %s) összes feltétele törölve';
    $Self->{Translation}->{'%s (Condition ID=%s): (new=%s, old=%s)'} = '%s (feltétel-azonosító = %s): (új = %s, régi = %s)';
    $Self->{Translation}->{'New Expression (ID=%s)'} = 'Új kifejezés (azonosító = %s)';
    $Self->{Translation}->{'Expression (ID=%s) deleted'} = 'Kifejezés (azonosító = %s) törölve';
    $Self->{Translation}->{'All Expressions of Condition (ID=%s) deleted'} = 'A feltétel (azonosító = %s) összes kifejezése törölve';
    $Self->{Translation}->{'%s (Expression ID=%s): (new=%s, old=%s)'} = '%s (kifejezés-azonosító = %s): (új = %s, régi = %s)';
    $Self->{Translation}->{'Workorder (ID=%s) reached actual end time.'} = 'A munkamegrendelés (azonosító = %s) elérte a tényleges befejezési időt.';
    $Self->{Translation}->{'Workorder (ID=%s) reached actual start time.'} = 'A munkamegrendelés (azonosító = %s) elérte a tényleges kezdési időt.';
    $Self->{Translation}->{'New Workorder (ID=%s)'} = 'Új munkamegrendelés (azonosító = %s)';
    $Self->{Translation}->{'New Attachment for WorkOrder: %s'} = 'Új melléklet a munkamegrendeléshez: %s';
    $Self->{Translation}->{'(ID=%s) New Attachment for WorkOrder: %s'} = '(azonosító = %s) Új melléklet a munkamegrendeléshez: %s';
    $Self->{Translation}->{'Deleted Attachment from WorkOrder: %s'} = 'Melléklet törölve a munkamegrendelésből: %s';
    $Self->{Translation}->{'(ID=%s) Deleted Attachment from WorkOrder: %s'} = '(azonosító = %s) Melléklet törölve a munkamegrendelésből: %s';
    $Self->{Translation}->{'New Report Attachment for WorkOrder: %s'} = 'Új jelentésmelléklet a munkamegrendeléshez: %s';
    $Self->{Translation}->{'(ID=%s) New Report Attachment for WorkOrder: %s'} = '(azonosító = %s) Új jelentésmelléklet a munkamegrendeléshez: %s';
    $Self->{Translation}->{'Deleted Report Attachment from WorkOrder: %s'} = 'Jelentésmelléklet törölve a munkamegrendelésből: %s';
    $Self->{Translation}->{'(ID=%s) Deleted Report Attachment from WorkOrder: %s'} = '(azonosító = %s) Jelentésmelléklet törölve a munkamegrendelésből: %s';
    $Self->{Translation}->{'Workorder (ID=%s) deleted'} = 'Munkamegrendelés (azonosító = %s) törölve';
    $Self->{Translation}->{'(ID=%s) Link to %s (ID=%s) added'} = '(azonosító = %s) Kapcsolat ehhez: %s (azonosító = %s) hozzáadva';
    $Self->{Translation}->{'(ID=%s) Link to %s (ID=%s) deleted'} = '(azonosító = %s) Kapcsolat ehhez: %s (azonosító = %s) törölve';
    $Self->{Translation}->{'(ID=%s) Notification sent to %s (Event: %s)'} = '(azonosító = %s) Értesítés elküldve ide: %s (esemény: %s)';
    $Self->{Translation}->{'Workorder (ID=%s) reached planned end time.'} = 'A munkamegrendelés (azonosító = %s) elérte a tervezett befejezési időt.';
    $Self->{Translation}->{'Workorder (ID=%s) reached planned start time.'} = 'A munkamegrendelés (azonosító = %s) elérte a tervezett kezdési időt.';
    $Self->{Translation}->{'(ID=%s) %s: (new=%s, old=%s)'} = '(azonosító = %s) %s: (új = %s, régi = %s)';

    # Perl Module: Kernel/System/ITSMChange/ITSMCondition/Object/ITSMWorkOrder.pm
    $Self->{Translation}->{'all'} = 'összes';
    $Self->{Translation}->{'any'} = 'bármely';

    # Perl Module: Kernel/System/ITSMChange/Notification.pm
    $Self->{Translation}->{'Previous Change Builder'} = 'Előző változás-összeállító';
    $Self->{Translation}->{'Previous Change Manager'} = 'Előző változásmenedzser';
    $Self->{Translation}->{'Workorder Agents'} = 'Munkamegrendelés ügyintézői';
    $Self->{Translation}->{'Previous Workorder Agent'} = 'Előző munkamegrendelés-ügyintéző';
    $Self->{Translation}->{'Change Initiators'} = 'Változtatáskezdeményezők';
    $Self->{Translation}->{'Group ITSMChange'} = 'ITSM változás csoport';
    $Self->{Translation}->{'Group ITSMChangeBuilder'} = 'ITSM változás-összeállító csoport';
    $Self->{Translation}->{'Group ITSMChangeManager'} = 'ITSM változásmenedzser csoport';

    # XML Definition: ITSMChangeManagement.sopm
    $Self->{Translation}->{'requested'} = 'kérve';
    $Self->{Translation}->{'pending approval'} = 'jóváhagyásra vár';
    $Self->{Translation}->{'rejected'} = 'visszautasítva';
    $Self->{Translation}->{'approved'} = 'jóváhagyva';
    $Self->{Translation}->{'in progress'} = 'folyamatban';
    $Self->{Translation}->{'pending pir'} = 'függőben lévő PIR';
    $Self->{Translation}->{'successful'} = 'sikeres';
    $Self->{Translation}->{'failed'} = 'sikertelen';
    $Self->{Translation}->{'canceled'} = 'megszakítva';
    $Self->{Translation}->{'retracted'} = 'visszavonva';
    $Self->{Translation}->{'created'} = 'létrehozva';
    $Self->{Translation}->{'accepted'} = 'elfogadva';
    $Self->{Translation}->{'ready'} = 'készen áll';
    $Self->{Translation}->{'approval'} = 'jóváhagyás';
    $Self->{Translation}->{'workorder'} = 'munkamegrendelés';
    $Self->{Translation}->{'backout'} = 'visszaállás';
    $Self->{Translation}->{'decision'} = 'döntés';
    $Self->{Translation}->{'pir'} = 'PIR';
    $Self->{Translation}->{'ChangeStateID'} = 'Változásállapot-azonosító';
    $Self->{Translation}->{'CategoryID'} = 'Kategória-azonosító';
    $Self->{Translation}->{'ImpactID'} = 'Hatásazonosító';
    $Self->{Translation}->{'PriorityID'} = 'Prioritásazonosító';
    $Self->{Translation}->{'ChangeManagerID'} = 'Változásmenedzser-azonosító';
    $Self->{Translation}->{'ChangeBuilderID'} = 'Változásösszeállító-azonosító';
    $Self->{Translation}->{'WorkOrderStateID'} = 'Munkamegrendelésállapot-azonosító';
    $Self->{Translation}->{'WorkOrderTypeID'} = 'Munkamegrendeléstípus-azonosító';
    $Self->{Translation}->{'WorkOrderAgentID'} = 'Munkamegrendelésügyintéző-azonosító';
    $Self->{Translation}->{'is'} = 'egyenlő';
    $Self->{Translation}->{'is not'} = 'nem';
    $Self->{Translation}->{'is empty'} = 'üres';
    $Self->{Translation}->{'is not empty'} = 'nem üres';
    $Self->{Translation}->{'is greater than'} = 'nagyobb mint';
    $Self->{Translation}->{'is less than'} = 'kisebb mint';
    $Self->{Translation}->{'is before'} = 'ez előtt';
    $Self->{Translation}->{'is after'} = 'ez után';
    $Self->{Translation}->{'contains'} = 'tartalmazza';
    $Self->{Translation}->{'not contains'} = 'nem tartalmazza';
    $Self->{Translation}->{'begins with'} = 'ezzel kezdődik';
    $Self->{Translation}->{'ends with'} = 'ezzel végződik';
    $Self->{Translation}->{'set'} = 'beállítva';

    # JS File: var/httpd/htdocs/js/ITSM.Admin.ChangeManagement.ChangeNotification.js
    $Self->{Translation}->{'Delete Notification'} = '';

    # JS File: var/httpd/htdocs/js/ITSM.Agent.ChangeManagement.Condition.js
    $Self->{Translation}->{'Do you really want to delete this expression?'} = 'Valóban törölni szeretné ezt a kifejezést?';
    $Self->{Translation}->{'Do you really want to delete this action?'} = 'Valóban törölni szeretné ezt a műveletet?';
    $Self->{Translation}->{'Do you really want to delete this condition?'} = 'Valóban törölni szeretné ezt a feltételt?';

    # JS File: var/httpd/htdocs/js/ITSM.Agent.ChangeManagement.ConfirmDialog.js
    $Self->{Translation}->{'Ok'} = 'OK';

    # SysConfig
    $Self->{Translation}->{'A list of the agents who have permission to take workorders. Key is a login name. Content is 0 or 1.'} =
        'Azon ügyintézők listája, akik jogosultsággal rendelkeznek a munkamegrendelések felvételéhez. A kulcs a bejelentkezési név. A tartalom 0 vagy 1.';
    $Self->{Translation}->{'A list of workorder states, at which the ActualStartTime of a workorder will be set if it was empty at this point.'} =
        'Azon munkamegrendelés-állapotok listája, amelyeknél egy munkamegrendelés tényleges kezdési ideje be lesz állítva, ha az üres ennél a pontnál.';
    $Self->{Translation}->{'Actual end time'} = 'Tényleges befejezési idő';
    $Self->{Translation}->{'Actual start time'} = 'Tényleges kezdési idő';
    $Self->{Translation}->{'Add Workorder'} = 'Munkamegrendelés hozzáadása';
    $Self->{Translation}->{'Add Workorder (from Template)'} = 'Munkamegrendelés hozzáadása (sablonból)';
    $Self->{Translation}->{'Add a change from template.'} = 'Egy változás hozzáadása sablonból.';
    $Self->{Translation}->{'Add a change.'} = 'Egy változás hozzáadása.';
    $Self->{Translation}->{'Add a workorder (from template) to the change.'} = 'Egy munkamegrendelés hozzáadása (sablonból) a változáshoz.';
    $Self->{Translation}->{'Add a workorder to the change.'} = 'Egy munkamegrendelés hozzáadása a változáshoz.';
    $Self->{Translation}->{'Add from template'} = 'Hozzáadás sablonból';
    $Self->{Translation}->{'Admin of the CIP matrix.'} = 'A CIP mátrix adminisztrátora.';
    $Self->{Translation}->{'Admin of the state machine.'} = 'Az állapotgép adminisztrátora.';
    $Self->{Translation}->{'Agent interface notification module to see the number of change advisory boards.'} =
        'Ügyintézői felület értesítési modul a változásmenedzsment-tanácsok számának megtekintéséhez.';
    $Self->{Translation}->{'Agent interface notification module to see the number of changes managed by the user.'} =
        'Ügyintézői felület értesítési modul a felhasználó által kezelt változások számának megtekintéséhez.';
    $Self->{Translation}->{'Agent interface notification module to see the number of changes.'} =
        'Ügyintézői felület értesítési modul a változások számának megtekintéséhez.';
    $Self->{Translation}->{'Agent interface notification module to see the number of workorders.'} =
        'Ügyintézői felület értesítési modul a munkamegrendelések számának megtekintéséhez.';
    $Self->{Translation}->{'CAB Member Search'} = 'CAB-tag keresés';
    $Self->{Translation}->{'Cache time in minutes for the change management toolbars. Default: 3 hours (180 minutes).'} =
        'Gyorsítótár idő percben a változásmenedzsment eszköztárnál. Alapértelmezett: 3 óra (180 perc).';
    $Self->{Translation}->{'Cache time in minutes for the change management. Default: 5 days (7200 minutes).'} =
        'Gyorsítótár idő percben a változásmenedzsmentnél. Alapértelmezett: 5 nap (7200 perc).';
    $Self->{Translation}->{'Change CAB Templates'} = 'Változás CAB-sablonok';
    $Self->{Translation}->{'Change History.'} = 'Változástörténet.';
    $Self->{Translation}->{'Change Involved Persons.'} = 'A változásban résztvevő személyek.';
    $Self->{Translation}->{'Change Overview "Small" Limit'} = 'Változás áttekintő „kis” korlát';
    $Self->{Translation}->{'Change Overview.'} = 'Változás áttekintés.';
    $Self->{Translation}->{'Change Print.'} = 'Változásnyomtatás.';
    $Self->{Translation}->{'Change Schedule.'} = 'Változtatási ütemterv.';
    $Self->{Translation}->{'Change Settings'} = 'Változás beállítások';
    $Self->{Translation}->{'Change Zoom'} = 'Változásnagyítás';
    $Self->{Translation}->{'Change Zoom.'} = 'Változásnagyítás.';
    $Self->{Translation}->{'Change and Workorder Templates'} = 'Változás és munkamegrendelés sablonok';
    $Self->{Translation}->{'Change and workorder templates edited by this user.'} = 'A felhasználó által szerkesztett változás és munkamegrendelés sablonok.';
    $Self->{Translation}->{'Change area.'} = 'Változásterület.';
    $Self->{Translation}->{'Change involved persons of the change.'} = 'A változás résztvevő személyeinek módosítása.';
    $Self->{Translation}->{'Change limit per page for Change Overview "Small".'} = 'Oldalankénti változás korlát a „kis” változás áttekintőnél.';
    $Self->{Translation}->{'Change number'} = 'Változásszám';
    $Self->{Translation}->{'Change search backend router of the agent interface.'} = 'Az ügyintézői felület változás keresési háttérprogram útválasztója.';
    $Self->{Translation}->{'Change state'} = 'Változásállapot';
    $Self->{Translation}->{'Change time'} = 'Változtatás ideje';
    $Self->{Translation}->{'Change title'} = 'Változáscím';
    $Self->{Translation}->{'Condition Edit'} = 'Feltétel szerkesztés';
    $Self->{Translation}->{'Condition Overview'} = 'Feltétel áttekintés';
    $Self->{Translation}->{'Configure which screen should be shown after a new workorder has been created.'} =
        'Annak beállítása, hogy mely képernyő legyen megjelenítve, miután egy új munkamegrendelést létrehoztak.';
    $Self->{Translation}->{'Configures how often the notifications are sent when planned the start time or other time values have been reached/passed.'} =
        'Beállítja, hogy milyen gyakran legyenek elküldve az értesítések, amikor elérik/átadják a tervezett kezdési időt vagy más időértékeket.';
    $Self->{Translation}->{'Create Change'} = 'Változás létrehozása';
    $Self->{Translation}->{'Create Change (from Template)'} = 'Változás létrehozása (sablonból)';
    $Self->{Translation}->{'Create a change (from template) from this ticket.'} = 'Változás létrehozása (sablonból) ebből a jegyből.';
    $Self->{Translation}->{'Create a change from this ticket.'} = 'Változás létrehozása ebből a jegyből.';
    $Self->{Translation}->{'Create and manage ITSM Change Management notifications.'} = 'ITSM változásmenedzsment értesítések létrehozása és kezelése.';
    $Self->{Translation}->{'Create and manage change notifications.'} = 'Változás értesítések létrehozása és kezelése.';
    $Self->{Translation}->{'Default type for a workorder. This entry must exist in general catalog class \'ITSM::ChangeManagement::WorkOrder::Type\'.'} =
        'Egy munkamegrendelés alapértelmezett típusa. Ennek a bejegyzésnek léteznie kell az „ITSM::ChangeManagement::WorkOrder::Type” általános katalógus osztályban.';
    $Self->{Translation}->{'Define Actions where a settings button is available in the linked objects widget (LinkObject::ViewMode = "complex"). Please note that these Actions must have registered the following JS and CSS files: Core.AllocationList.css, Core.UI.AllocationList.js, Core.UI.Table.Sort.js, Core.Agent.TableFilters.js and Core.Agent.LinkObject.js.'} =
        'Műveletek meghatározása, ahol egy beállítások gomb érhető el a kapcsolt objektumok felületi elemen (LinkObject::ViewMode = „összetett”). Ne feledje, hogy ezeknek a műveleteknek rendelkezniük kell a következő JS és CSS fájlok regisztrálásával: Core.AllocationList.css, Core.UI.AllocationList.js, Core.UI.Table.Sort.js, Core.Agent.TableFilters.js és Core.Agent.LinkObject.js.';
    $Self->{Translation}->{'Define the signals for each workorder state.'} = 'A szignálok meghatározása minden munkamegrendelés-állapotnál.';
    $Self->{Translation}->{'Define which columns are shown in the linked Changes widget (LinkObject::ViewMode = "complex"). Note: Only Change attributes are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.'} =
        'Annak meghatározása, hogy mely oszlopok legyenek láthatók a kapcsolt változások felületi elemen (LinkObject::ViewMode = „összetett”). Megjegyzés: csak változás attribútumok engedélyezettek az alapértelmezett oszlopoknál. Lehetséges beállítások: 0 = letiltva, 1 = elérhető, 2 = alapértelmezetten engedélyezett.';
    $Self->{Translation}->{'Define which columns are shown in the linked Workorder widget (LinkObject::ViewMode = "complex"). Note: Only Workorder attributes are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.'} =
        'Annak meghatározása, hogy mely oszlopok legyenek láthatók a kapcsolt munkamegrendelés felületi elemen (LinkObject::ViewMode = „összetett”). Megjegyzés: csak munkamegrendelés attribútumok engedélyezettek az alapértelmezett oszlopoknál. Lehetséges beállítások: 0 = letiltva, 1 = elérhető, 2 = alapértelmezetten engedélyezett.';
    $Self->{Translation}->{'Defines an overview module to show the small view of a change list.'} =
        'Egy áttekintő modult határoz meg egy változáslista kis nézetének megjelenítéséhez.';
    $Self->{Translation}->{'Defines an overview module to show the small view of a template list.'} =
        'Egy áttekintő modult határoz meg egy sablonlista kis nézetének megjelenítéséhez.';
    $Self->{Translation}->{'Defines if it will be possible to print the accounted time.'} = 'Meghatározza, hogy lehetséges lesz-e kinyomtatni az elszámolt időt.';
    $Self->{Translation}->{'Defines if it will be possible to print the planned effort.'} = 'Meghatározza, hogy lehetséges lesz-e kinyomtatni a tervezett ráfordítást.';
    $Self->{Translation}->{'Defines if reachable (as defined by the state machine) change end states should be allowed if a change is in a locked state.'} =
        'Meghatározza, hogy az elérhető (ahogy az állapotgép meghatározta) változás befejezési állapotait el kell-e fogadni, ha egy változás zárolt állapotban van.';
    $Self->{Translation}->{'Defines if reachable (as defined by the state machine) workorder end states should be allowed if a workorder is in a locked state.'} =
        'Meghatározza, hogy az elérhető (ahogy az állapotgép meghatározta) munkamegrendelés befejezési állapotait el kell-e fogadni, ha egy munkamegrendelés zárolt állapotban van.';
    $Self->{Translation}->{'Defines if the accounted time should be shown.'} = 'Meghatározza, hogy az elszámolt időt meg kell-e jeleníteni.';
    $Self->{Translation}->{'Defines if the actual start and end times should be set.'} = 'Meghatározza, hogy a tényleges kezdési és befejezési időket be kell-e állítani.';
    $Self->{Translation}->{'Defines if the change search and the workorder search functions could use the mirror DB.'} =
        'Meghatározza, hogy a változáskeresés és a munkamegrendelés-keresés funkciók használhatják-e a tükör adatbázist.';
    $Self->{Translation}->{'Defines if the change state can be set in the change edit screen of the agent interface.'} =
        'Meghatározza, hogy a változás állapota beállítható-e az ügyintézői felület változás szerkesztése képernyőjén.';
    $Self->{Translation}->{'Defines if the planned effort should be shown.'} = 'Meghatározza, hogy a tervezett ráfordítást meg kell-e jeleníteni.';
    $Self->{Translation}->{'Defines if the requested date should be print by customer.'} = 'Meghatározza, hogy a kért dátumot ügyfél szerint kell-e kinyomtatni.';
    $Self->{Translation}->{'Defines if the requested date should be searched by customer.'} =
        'Meghatározza, hogy a kért dátumot ügyfél szerint kell-e keresni.';
    $Self->{Translation}->{'Defines if the requested date should be set by customer.'} = 'Meghatározza, hogy a kért dátumot ügyfél szerint kell-e beállítani.';
    $Self->{Translation}->{'Defines if the requested date should be shown by customer.'} = 'Meghatározza, hogy a kért dátumot ügyfél szerint kell-e megjeleníteni.';
    $Self->{Translation}->{'Defines if the workorder state should be shown.'} = 'Meghatározza, hogy a munkamegrendelés állapotát meg kell-e jeleníteni.';
    $Self->{Translation}->{'Defines if the workorder title should be shown.'} = 'Meghatározza, hogy a munkamegrendelés címét meg kell-e jeleníteni.';
    $Self->{Translation}->{'Defines shown graph attributes.'} = 'Meghatározza a megjelenített grafikonattribútumokat.';
    $Self->{Translation}->{'Defines that only changes containing Workorders linked with services, which the customer user has permission to use will be shown. Any other changes will not be displayed.'} =
        'Meghatározza, hogy csak azok a szolgáltatásokkal összekapcsolt munkamegrendeléseket tartalmazó változások lesznek megjelenítve, amelyekre az ügyfélfelhasználónak használati jogosultsága van. Minden egyéb változás nem kerül megjelenítésre.';
    $Self->{Translation}->{'Defines the change states that will be allowed to delete.'} = 'Meghatározza azokat a változásállapotokat, amelyek engedélyezettek lesznek törlésre.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the Change PSA overview.'} =
        'Meghatározza azokat a változásállapotokat, amelyek szűrőkként lesznek használva a változás PSA áttekintőjében.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the Change Schedule overview.'} =
        'Meghatározza azokat a változásállapotokat, amelyek szűrőkként lesznek használva a változtatási ütemterv áttekintőjében.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the MyCAB overview.'} =
        'Meghatározza azokat a változásállapotokat, amelyek szűrőkként lesznek használva a saját CAB áttekintőjében.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the MyChanges overview.'} =
        'Meghatározza azokat a változásállapotokat, amelyek szűrőkként lesznek használva a saját változások áttekintőjében.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the change manager overview.'} =
        'Meghatározza azokat a változásállapotokat, amelyek szűrőkként lesznek használva a változásmenedzser áttekintőjében.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the change overview.'} =
        'Meghatározza azokat a változásállapotokat, amelyek szűrőkként lesznek használva a változás áttekintőjében.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the customer change schedule overview.'} =
        'Meghatározza azokat a változásállapotokat, amelyek szűrőkként lesznek használva az ügyfél változtatási ütemterv áttekintőjében.';
    $Self->{Translation}->{'Defines the default change title for a dummy change which is needed to edit a workorder template.'} =
        'Meghatározza egy üres változás alapértelmezett változáscímét, amely egy munkamegrendelés-sablon szerkesztéséhez szükséges.';
    $Self->{Translation}->{'Defines the default sort criteria in the change PSA overview.'} =
        'Meghatározza az alapértelmezett rendezési feltételt a változás PSA áttekintőjében.';
    $Self->{Translation}->{'Defines the default sort criteria in the change manager overview.'} =
        'Meghatározza az alapértelmezett rendezési feltételt a változásmenedzser áttekintőjében.';
    $Self->{Translation}->{'Defines the default sort criteria in the change overview.'} = 'Meghatározza az alapértelmezett rendezési feltételt a változás áttekintőjében.';
    $Self->{Translation}->{'Defines the default sort criteria in the change schedule overview.'} =
        'Meghatározza az alapértelmezett rendezési feltételt a változtatási ütemterv áttekintőjében.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the MyCAB overview.'} =
        'Meghatározza a változások alapértelmezett rendezési feltételét a saját CAB áttekintőjében.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the MyChanges overview.'} =
        'Meghatározza a változások alapértelmezett rendezési feltételét a saját változások áttekintőjében.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the MyWorkorders overview.'} =
        'Meghatározza a változások alapértelmezett rendezési feltételét a saját munkamegrendelések áttekintőjében.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the PIR overview.'} =
        'Meghatározza a változások alapértelmezett rendezési feltételét a PIR áttekintőjében.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the customer change schedule overview.'} =
        'Meghatározza a változások alapértelmezett rendezési feltételét az ügyfél változtatási ütemterv áttekintőjében.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the template overview.'} =
        'Meghatározza a változások alapértelmezett rendezési feltételét a sablon áttekintőjében.';
    $Self->{Translation}->{'Defines the default sort order in the MyCAB overview.'} = 'Meghatározza az alapértelmezett rendezési sorrendet a saját CAB áttekintőjében.';
    $Self->{Translation}->{'Defines the default sort order in the MyChanges overview.'} = 'Meghatározza az alapértelmezett rendezési sorrendet a saját változások áttekintőjében.';
    $Self->{Translation}->{'Defines the default sort order in the MyWorkorders overview.'} =
        'Meghatározza az alapértelmezett rendezési sorrendet a saját munkamegrendelések áttekintőjében.';
    $Self->{Translation}->{'Defines the default sort order in the PIR overview.'} = 'Meghatározza az alapértelmezett rendezési sorrendet a PIR áttekintőjében.';
    $Self->{Translation}->{'Defines the default sort order in the change PSA overview.'} = 'Meghatározza az alapértelmezett rendezési sorrendet a változás PSA áttekintőjében.';
    $Self->{Translation}->{'Defines the default sort order in the change manager overview.'} =
        'Meghatározza az alapértelmezett rendezési sorrendet a változásmenedzser áttekintőjében.';
    $Self->{Translation}->{'Defines the default sort order in the change overview.'} = 'Meghatározza az alapértelmezett rendezési sorrendet a változás áttekintőjében.';
    $Self->{Translation}->{'Defines the default sort order in the change schedule overview.'} =
        'Meghatározza az alapértelmezett rendezési sorrendet a változtatási ütemterv áttekintőjében.';
    $Self->{Translation}->{'Defines the default sort order in the customer change schedule overview.'} =
        'Meghatározza az alapértelmezett rendezési sorrendet az ügyfél változtatási ütemterv áttekintőjében.';
    $Self->{Translation}->{'Defines the default sort order in the template overview.'} = 'Meghatározza az alapértelmezett rendezési sorrendet a sablon áttekintőjében.';
    $Self->{Translation}->{'Defines the default value for the category of a change.'} = 'Meghatározza egy változás kategóriájának alapértelmezett értékét.';
    $Self->{Translation}->{'Defines the default value for the impact of a change.'} = 'Meghatározza egy változás hatásának alapértelmezett értékét.';
    $Self->{Translation}->{'Defines the field type of CompareValue fields for change attributes used in the change condition edit screen of the agent interface. Valid values are Selection, Text and Date. If a type is not defined, the field will not be shown.'} =
        'Meghatározza az „Összehasonlítás érték” mezők mezőtípusát az ügyintézői felület változás feltételének szerkesztése képernyőjén használt változás attribútumainál. Az érvényes értékek: Selection, Text és Date. Ha a típus nincs meghatározva, akkor a mező nem lesz látható.';
    $Self->{Translation}->{'Defines the field type of CompareValue fields for workorder attributes used in the change condition edit screen of the agent interface. Valid values are Selection, Text and Date. If a type is not defined, the field will not be shown.'} =
        'Meghatározza az „Összehasonlítás érték” mezők mezőtípusát az ügyintézői felület változás feltételének szerkesztése képernyőjén használt munkamegrendelés attribútumainál. Az érvényes értékek: Selection, Text és Date. Ha a típus nincs meghatározva, akkor a mező nem lesz látható.';
    $Self->{Translation}->{'Defines the object attributes that are selectable for change objects in the change condition edit screen of the agent interface.'} =
        'Meghatározza azokat az objektumattribútumokat, amelyek kiválaszthatók a változásobjektumoknál az ügyintézői felület változás feltételének szerkesztése képernyőjén.';
    $Self->{Translation}->{'Defines the object attributes that are selectable for workorder objects in the change condition edit screen of the agent interface.'} =
        'Meghatározza azokat az objektumattribútumokat, amelyek kiválaszthatók a munkamegrendelés objektumoknál az ügyintézői felület változás feltételének szerkesztése képernyőjén.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute AccountedTime in the change condition edit screen of the agent interface.'} =
        'Meghatározza azokat az operátorokat, amelyek kiválaszthatók az „Elszámolt idő” attribútumnál az ügyintézői felület változás feltételének szerkesztése képernyőjén.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ActualEndTime in the change condition edit screen of the agent interface.'} =
        'Meghatározza azokat az operátorokat, amelyek kiválaszthatók a „Tényleges befejezési idő” attribútumnál az ügyintézői felület változás feltételének szerkesztése képernyőjén.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ActualStartTime in the change condition edit screen of the agent interface.'} =
        'Meghatározza azokat az operátorokat, amelyek kiválaszthatók a „Tényleges kezdési idő” attribútumnál az ügyintézői felület változás feltételének szerkesztése képernyőjén.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute CategoryID in the change condition edit screen of the agent interface.'} =
        'Meghatározza azokat az operátorokat, amelyek kiválaszthatók a „Kategóriaazonosító” attribútumnál az ügyintézői felület változás feltételének szerkesztése képernyőjén.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ChangeBuilderID in the change condition edit screen of the agent interface.'} =
        'Meghatározza azokat az operátorokat, amelyek kiválaszthatók a „Változásösszeállító-azonosító” attribútumnál az ügyintézői felület változás feltételének szerkesztése képernyőjén.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ChangeManagerID in the change condition edit screen of the agent interface.'} =
        'Meghatározza azokat az operátorokat, amelyek kiválaszthatók a „Változásmenedzser-azonosító” attribútumnál az ügyintézői felület változás feltételének szerkesztése képernyőjén.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ChangeStateID in the change condition edit screen of the agent interface.'} =
        'Meghatározza azokat az operátorokat, amelyek kiválaszthatók a „Változásállapot-azonosító” attribútumnál az ügyintézői felület változás feltételének szerkesztése képernyőjén.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ChangeTitle in the change condition edit screen of the agent interface.'} =
        'Meghatározza azokat az operátorokat, amelyek kiválaszthatók a „Változáscím” attribútumnál az ügyintézői felület változás feltételének szerkesztése képernyőjén.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute DynamicField in the change condition edit screen of the agent interface.'} =
        'Meghatározza azokat az operátorokat, amelyek kiválaszthatók a „Dinamikus mező” attribútumnál az ügyintézői felület változás feltételének szerkesztése képernyőjén.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ImpactID in the change condition edit screen of the agent interface.'} =
        'Meghatározza azokat az operátorokat, amelyek kiválaszthatók a „Hatásazonosító” attribútumnál az ügyintézői felület változás feltételének szerkesztése képernyőjén.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute PlannedEffort in the change condition edit screen of the agent interface.'} =
        'Meghatározza azokat az operátorokat, amelyek kiválaszthatók a „Tervezett ráfordítás” attribútumnál az ügyintézői felület változás feltételének szerkesztése képernyőjén.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute PlannedEndTime in the change condition edit screen of the agent interface.'} =
        'Meghatározza azokat az operátorokat, amelyek kiválaszthatók a „Tervezett befejezési idő” attribútumnál az ügyintézői felület változás feltételének szerkesztése képernyőjén.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute PlannedStartTime in the change condition edit screen of the agent interface.'} =
        'Meghatározza azokat az operátorokat, amelyek kiválaszthatók a „Tervezett kezdési idő” attribútumnál az ügyintézői felület változás feltételének szerkesztése képernyőjén.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute PriorityID in the change condition edit screen of the agent interface.'} =
        'Meghatározza azokat az operátorokat, amelyek kiválaszthatók a „Prioritásazonosító” attribútumnál az ügyintézői felület változás feltételének szerkesztése képernyőjén.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute RequestedTime in the change condition edit screen of the agent interface.'} =
        'Meghatározza azokat az operátorokat, amelyek kiválaszthatók a „Kért idő” attribútumnál az ügyintézői felület változás feltételének szerkesztése képernyőjén.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute WorkOrderAgentID in the change condition edit screen of the agent interface.'} =
        'Meghatározza azokat az operátorokat, amelyek kiválaszthatók a „Munkamegrendelésügyintéző-azonosító” attribútumnál az ügyintézői felület változás feltételének szerkesztése képernyőjén.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute WorkOrderNumber in the change condition edit screen of the agent interface.'} =
        'Meghatározza azokat az operátorokat, amelyek kiválaszthatók a „Munkamegrendelés-szám” attribútumnál az ügyintézői felület változás feltételének szerkesztése képernyőjén.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute WorkOrderStateID in the change condition edit screen of the agent interface.'} =
        'Meghatározza azokat az operátorokat, amelyek kiválaszthatók a „Munkamegrendelésállapot-azonosító” attribútumnál az ügyintézői felület változás feltételének szerkesztése képernyőjén.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute WorkOrderTitle in the change condition edit screen of the agent interface.'} =
        'Meghatározza azokat az operátorokat, amelyek kiválaszthatók a „Munkamegrendelés-cím” attribútumnál az ügyintézői felület változás feltételének szerkesztése képernyőjén.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute WorkOrderTypeID in the change condition edit screen of the agent interface.'} =
        'Meghatározza azokat az operátorokat, amelyek kiválaszthatók a „Munkamegrendeléstípus-azonosító” attribútumnál az ügyintézői felület változás feltételének szerkesztése képernyőjén.';
    $Self->{Translation}->{'Defines the period (in years), in which start and end times can be selected.'} =
        'Meghatározza (években) azt az időszakot, amelyben a kezdési és befejezési idők kiválaszthatók.';
    $Self->{Translation}->{'Defines the shown attributes of a workorder in the tooltip of the workorder graph in the change zoom. To show workorder dynamic fields in the tooltip, they must be specified like DynamicField_WorkOrderFieldName1, DynamicField_WorkOrderFieldName2, etc.'} =
        'Meghatározza egy munkamegrendelés megjelenített attribútumait a változásnagyításban lévő munkamegrendelés-grafikon buboréksúgójában. Ahhoz, hogy a munkamegrendelés dinamikus mezői megjelenjenek a buboréksúgóban, meg kell adni azokat a következőképpen: DynamicField_WorkOrderFieldName1, DynamicField_WorkOrderFieldName2, stb.';
    $Self->{Translation}->{'Defines the shown columns in the Change PSA overview. This option has no effect on the position of the column.'} =
        'Meghatározza a megjelenített oszlopokat a változás PSA áttekintőjében. Ennek a beállításnak nincs hatása az oszlop helyzetére.';
    $Self->{Translation}->{'Defines the shown columns in the Change Schedule overview. This option has no effect on the position of the column.'} =
        'Meghatározza a megjelenített oszlopokat a változtatási ütemterv áttekintőjében. Ennek a beállításnak nincs hatása az oszlop helyzetére.';
    $Self->{Translation}->{'Defines the shown columns in the MyCAB overview. This option has no effect on the position of the column.'} =
        'Meghatározza a megjelenített oszlopokat a saját CAB áttekintőjében. Ennek a beállításnak nincs hatása az oszlop helyzetére.';
    $Self->{Translation}->{'Defines the shown columns in the MyChanges overview. This option has no effect on the position of the column.'} =
        'Meghatározza a megjelenített oszlopokat a saját változások áttekintőjében. Ennek a beállításnak nincs hatása az oszlop helyzetére.';
    $Self->{Translation}->{'Defines the shown columns in the MyWorkorders overview. This option has no effect on the position of the column.'} =
        'Meghatározza a megjelenített oszlopokat a saját munkamegrendelések áttekintőjében. Ennek a beállításnak nincs hatása az oszlop helyzetére.';
    $Self->{Translation}->{'Defines the shown columns in the PIR overview. This option has no effect on the position of the column.'} =
        'Meghatározza a megjelenített oszlopokat a PIR áttekintőjében. Ennek a beállításnak nincs hatása az oszlop helyzetére.';
    $Self->{Translation}->{'Defines the shown columns in the change manager overview. This option has no effect on the position of the column.'} =
        'Meghatározza a megjelenített oszlopokat a változásmenedzser áttekintőjében. Ennek a beállításnak nincs hatása az oszlop helyzetére.';
    $Self->{Translation}->{'Defines the shown columns in the change overview. This option has no effect on the position of the column.'} =
        'Meghatározza a megjelenített oszlopokat a változás áttekintőjében. Ennek a beállításnak nincs hatása az oszlop helyzetére.';
    $Self->{Translation}->{'Defines the shown columns in the change search. This option has no effect on the position of the column.'} =
        'Meghatározza a megjelenített oszlopokat a változáskeresőben. Ennek a beállításnak nincs hatása az oszlop helyzetére.';
    $Self->{Translation}->{'Defines the shown columns in the customer change schedule overview. This option has no effect on the position of the column.'} =
        'Meghatározza a megjelenített oszlopokat az ügyfél változtatási ütemterv áttekintőjében. Ennek a beállításnak nincs hatása az oszlop helyzetére.';
    $Self->{Translation}->{'Defines the shown columns in the template overview. This option has no effect on the position of the column.'} =
        'Meghatározza a megjelenített oszlopokat a sablon áttekintőjében. Ennek a beállításnak nincs hatása az oszlop helyzetére.';
    $Self->{Translation}->{'Defines the signals for each ITSM change state.'} = 'Meghatározza a szignálokat minden egyes ITSM változás állapotához.';
    $Self->{Translation}->{'Defines the template types that will be used as filters in the template overview.'} =
        'Meghatározza azokat a sablontípusokat, amelyek szűrőkként lesznek használva a sablon áttekintőjében.';
    $Self->{Translation}->{'Defines the workorder states that will be used as filters in the MyWorkorders overview.'} =
        'Meghatározza azokat a munkamegrendelés-állapotokat, amelyek szűrőkként lesznek használva a saját munkamegrendelések áttekintőjében.';
    $Self->{Translation}->{'Defines the workorder states that will be used as filters in the PIR overview.'} =
        'Meghatározza azokat a munkamegrendelés-állapotokat, amelyek szűrőkként lesznek használva a PIR áttekintőjében.';
    $Self->{Translation}->{'Defines the workorder types that will be used to show the PIR overview.'} =
        'Meghatározza azokat a munkamegrendelés-típusokat, amelyek a PIR áttekintő megjelenítéshez lesznek használva.';
    $Self->{Translation}->{'Defines whether notifications should be sent.'} = 'Meghatározza, hogy az értesítéseket el kell-e küldeni.';
    $Self->{Translation}->{'Delete a change.'} = 'Egy változás törlése.';
    $Self->{Translation}->{'Delete the change.'} = 'A változás törlése.';
    $Self->{Translation}->{'Delete the workorder.'} = 'A munkamegrendelés törlése.';
    $Self->{Translation}->{'Details of a change history entry.'} = 'Egy változástörténet-bejegyzés részletei.';
    $Self->{Translation}->{'Determines if an agent can exchange the X-axis of a stat if he generates one.'} =
        'Meghatározza, hogy egy ügyintéző kicserélheti-e egy statisztika X-tengelyét, ha létrehozott egyet.';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about changes done for config item classes.'} =
        'Meghatározza, hogy a közös statisztikák modul előállíthat-e statisztikákat az elvégzett változásokról a konfigurációelem osztályoknál.';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about changes regarding change state updates within a timeperiod.'} =
        'Meghatározza, hogy a közös statisztikák modul előállíthat-e statisztikákat egy időszakon belüli változásállapot frissítésekre vonatkozó változásokról.';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about changes regarding the relation between changes and incident tickets.'} =
        'Meghatározza, hogy a közös statisztikák modul előállíthat-e statisztikákat a változások és incidensjegyek közötti kapcsolatra vonatkozó változásokról.';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about changes.'} =
        'Meghatározza, hogy a közös statisztikák modul előállíthat-e statisztikákat a változásokról.';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about the number of Rfc tickets a requester created.'} =
        'Meghatározza, hogy a közös statisztikák modul előállíthat-e statisztikákat egy kérő által létrehozott változáskérelem jegyek számáról.';
    $Self->{Translation}->{'Dynamic fields (for changes and workorders) shown in the change print screen of the agent interface.'} =
        'Az ügyintézői felület változás nyomtatás képernyőjén megjelenített dinamikus mezők (változásokhoz és munkamegrendelésekhez).';
    $Self->{Translation}->{'Dynamic fields shown in the change add screen of the agent interface.'} =
        'Az ügyintézői felület változás hozzáadása képernyőjén megjelenített dinamikus mezők.';
    $Self->{Translation}->{'Dynamic fields shown in the change edit screen of the agent interface.'} =
        'Az ügyintézői felület változás szerkesztése képernyőjén megjelenített dinamikus mezők.';
    $Self->{Translation}->{'Dynamic fields shown in the change search screen of the agent interface.'} =
        'Az ügyintézői felület változás keresése képernyőjén megjelenített dinamikus mezők.';
    $Self->{Translation}->{'Dynamic fields shown in the change zoom screen of the agent interface.'} =
        'Az ügyintézői felület változás nagyítása képernyőjén megjelenített dinamikus mezők.';
    $Self->{Translation}->{'Dynamic fields shown in the workorder add screen of the agent interface.'} =
        'Az ügyintézői felület munkamegrendelés hozzáadása képernyőjén megjelenített dinamikus mezők.';
    $Self->{Translation}->{'Dynamic fields shown in the workorder edit screen of the agent interface.'} =
        'Az ügyintézői felület munkamegrendelés szerkesztése képernyőjén megjelenített dinamikus mezők.';
    $Self->{Translation}->{'Dynamic fields shown in the workorder report screen of the agent interface.'} =
        'Az ügyintézői felület munkamegrendelés jelentése képernyőjén megjelenített dinamikus mezők.';
    $Self->{Translation}->{'Dynamic fields shown in the workorder zoom screen of the agent interface.'} =
        'Az ügyintézői felület munkamegrendelés nagyítása képernyőjén megjelenített dinamikus mezők.';
    $Self->{Translation}->{'DynamicField event module to handle the update of conditions if dynamic fields are added, updated or deleted.'} =
        'Dinamikus mező eseménymodul a feltételek frissítésének kezeléséhez, ha dinamikus mezők kerülnek hozzáadásra, frissítésre vagy törlésre.';
    $Self->{Translation}->{'Edit a change.'} = 'Egy változás szerkesztése.';
    $Self->{Translation}->{'Edit the change.'} = 'A változás szerkesztése.';
    $Self->{Translation}->{'Edit the conditions of the change.'} = 'A változás feltételeinek szerkesztése.';
    $Self->{Translation}->{'Edit the workorder.'} = 'A munkamegrendelés szerkesztése.';
    $Self->{Translation}->{'Enables the minimal change counter size (if "Date" was selected as ITSMChange::NumberGenerator).'} =
        'Engedélyezi a legkisebb változásszámláló méretet (ha „Date” lett kiválasztva az ITSMChange::NumberGenerator beállításaként).';
    $Self->{Translation}->{'Forward schedule of changes. Overview over approved changes.'} =
        'Változások előjegyzési terve. A jóváhagyott változások áttekintése.';
    $Self->{Translation}->{'History Zoom'} = 'Előzménynagyítás';
    $Self->{Translation}->{'ITSM Change CAB Templates.'} = 'ITSM változás CAB sablonok.';
    $Self->{Translation}->{'ITSM Change Condition Edit.'} = 'ITSM változásfeltétel szerkesztés.';
    $Self->{Translation}->{'ITSM Change Condition Overview.'} = 'ITSM változásfeltétel áttekintés.';
    $Self->{Translation}->{'ITSM Change Manager Overview.'} = 'ITSM változásmenedzser áttekintés.';
    $Self->{Translation}->{'ITSM Change Notifications'} = 'ITSM változás értesítések';
    $Self->{Translation}->{'ITSM Change PIR Overview.'} = 'ITSM változás PIR áttekintés.';
    $Self->{Translation}->{'ITSM Change notification rules'} = 'ITSM változás értesítési szabályok';
    $Self->{Translation}->{'ITSM MyCAB Overview.'} = 'ITSM saját CAB áttekintés.';
    $Self->{Translation}->{'ITSM MyChanges Overview.'} = 'ITSM saját változások áttekintés.';
    $Self->{Translation}->{'ITSM MyWorkorders Overview.'} = 'ITSM saját munkamegrendelések áttekintés.';
    $Self->{Translation}->{'ITSM Template Delete.'} = 'ITSM sablon törlés.';
    $Self->{Translation}->{'ITSM Template Edit CAB.'} = 'ITSM sablon szerkesztés CAB.';
    $Self->{Translation}->{'ITSM Template Edit Content.'} = 'ITSM sablon szerkesztés tartalom.';
    $Self->{Translation}->{'ITSM Template Edit.'} = 'ITSM sablon szerkesztés.';
    $Self->{Translation}->{'ITSM Template Overview.'} = 'ITSM sablon áttekintés.';
    $Self->{Translation}->{'ITSM event module that cleans up conditions.'} = 'ITSM eseménymodul, amely törli a feltételeket.';
    $Self->{Translation}->{'ITSM event module that deletes the cache for a toolbar.'} = 'ITSM eseménymodul, amely törli a gyorsítótárat egy eszköztárnál.';
    $Self->{Translation}->{'ITSM event module that deletes the history of changes.'} = 'ITSM eseménymodul, amely törli a változások előzményeit.';
    $Self->{Translation}->{'ITSM event module that matches conditions and executes actions.'} =
        'ITSM eseménymodul, amely feltételeket illeszt és műveleteket hajt végre.';
    $Self->{Translation}->{'ITSM event module that sends notifications.'} = 'ITSM eseménymodul, amely értesítéseket küld.';
    $Self->{Translation}->{'ITSM event module that updates the history of changes.'} = 'ITSM eseménymodul, amely frissíti a változások előzményeit.';
    $Self->{Translation}->{'ITSM event module that updates the history of conditions.'} = 'ITSM eseménymodul, amely frissíti a feltételek előzményeit.';
    $Self->{Translation}->{'ITSM event module that updates the history of workorders.'} = 'ITSM eseménymodul, amely frissíti a munkamegrendelések előzményeit.';
    $Self->{Translation}->{'ITSM event module to recalculate the workorder numbers.'} = 'ITSM eseménymodul a munkamegrendelés számainak újraszámolásához.';
    $Self->{Translation}->{'ITSM event module to set the actual start and end times of workorders.'} =
        'ITSM eseménymodul a munkamegrendelések tényleges kezdési és befejezési idejének beállításához.';
    $Self->{Translation}->{'ITSMChange'} = 'ITSM változás';
    $Self->{Translation}->{'ITSMWorkOrder'} = 'ITSM munkamegrendelés';
    $Self->{Translation}->{'If frequency is \'regularly\', you can configure how often the notifications are sent (every X hours).'} =
        'Ha a gyakoriság „rendszeresen”, akkor beállíthatja, hogy az értesítések milyen gyakran legyenek elküldve (minden X. órában).';
    $Self->{Translation}->{'Link another object to the change.'} = 'Másik objektum összekapcsolása a változással.';
    $Self->{Translation}->{'Link another object to the workorder.'} = 'Másik objektum összekapcsolása a munkamegrendeléssel.';
    $Self->{Translation}->{'List of all change events to be displayed in the GUI.'} = 'Az összes változásesemény listája, amelyek megjelennek a grafikus felületen.';
    $Self->{Translation}->{'List of all workorder events to be displayed in the GUI.'} = 'Az összes munkamegrendelés-esemény listája, amelyek megjelennek a grafikus felületen.';
    $Self->{Translation}->{'Lookup of CAB members for autocompletion.'} = 'CAB-tagok kikeresése az automatikus kiegészítéshez.';
    $Self->{Translation}->{'Lookup of agents, used for autocompletion.'} = 'Ügyintézők kikeresése az automatikus kiegészítés használatához.';
    $Self->{Translation}->{'Manage ITSM Change Management state machine.'} = 'ITSM változásmenedzsment állapotgép kezelése.';
    $Self->{Translation}->{'Manage the category ↔ impact ↔ priority matrix.'} = 'A kategória ↔ hatás ↔ prioritás mátrix kezelése.';
    $Self->{Translation}->{'Module to check if WorkOrderAdd or WorkOrderAddFromTemplate should be permitted.'} =
        'Egy modul annak ellenőrzéséhez, hogy a „Munkamegrendelés hozzáadása” vagy a „Munkamegrendelés hozzáadása sablonból” osztályokat engedélyezni kell-e.';
    $Self->{Translation}->{'Module to check the CAB members.'} = 'Egy modul a CAB-tagok ellenőrzéséhez.';
    $Self->{Translation}->{'Module to check the agent.'} = 'Egy modul az ügyintéző ellenőrzéséhez.';
    $Self->{Translation}->{'Module to check the change builder.'} = 'Egy modul a változás-összeállító ellenőrzéséhez.';
    $Self->{Translation}->{'Module to check the change manager.'} = 'Egy modul a változásmenedzser ellenőrzéséhez.';
    $Self->{Translation}->{'Module to check the workorder agent.'} = 'Egy modul a munkamegrendelés ügyintézőjének ellenőrzéséhez.';
    $Self->{Translation}->{'Module to check whether no workorder agent is set.'} = 'Egy modul annak ellenőrzéséhez, hogy van-e munkamegrendelés-ügyintéző beállítva.';
    $Self->{Translation}->{'Module to check whether the agent is contained in the configured list.'} =
        'Egy modul annak ellenőrzéséhez, hogy az ügyintézőt tartalmazza-e a beállítási lista.';
    $Self->{Translation}->{'Module to show a link to create a change from this ticket. The ticket will be automatically linked with the new change.'} =
        'Egy modul egy hivatkozás megjelenítéséhez, amely egy változás létrehozására mutat ebből a jegyből. A jegy automatikusan össze lesz kapcsolva az új változással.';
    $Self->{Translation}->{'Move Time Slot.'} = 'Időrés áthelyezése.';
    $Self->{Translation}->{'Move all workorders in time.'} = 'Minden munkamegrendelés áthelyezése az időben.';
    $Self->{Translation}->{'New (from template)'} = 'Új (sablonból)';
    $Self->{Translation}->{'Only users of these groups have the permission to use the ticket types as defined in "ITSMChange::AddChangeLinkTicketTypes" if the feature "Ticket::Acl::Module###200-Ticket::Acl::Module" is enabled.'} =
        'Csak ezen csoportok felhasználóinak van jogosultsága az „ITSMChange::AddChangeLinkTicketTypes” beállításban meghatározott jegytípusok használatára, ha a „Ticket::Acl::Module###200-Ticket::Acl::Module” szolgáltatás engedélyezve van.';
    $Self->{Translation}->{'Other Settings'} = 'Egyéb beállítások';
    $Self->{Translation}->{'Overview over all Changes.'} = 'Az összes változás áttekintése.';
    $Self->{Translation}->{'PIR (Post Implementation Review)'} = 'PIR (megvalósítás utáni vizsgálat)';
    $Self->{Translation}->{'Parameters for the UserCreateWorkOrderNextMask object in the preference view of the agent interface.'} =
        'A UserCreateWorkOrderNextMask objektum paraméterei az ügyintézői felület beállítás nézetében.';
    $Self->{Translation}->{'Parameters for the pages (in which the changes are shown) of the small change overview.'} =
        'Paraméterek a kis változás áttekintő oldalaihoz (amelyekben a változások megjelennek).';
    $Self->{Translation}->{'Performs the configured action for each event (as an Invoker) for each configured Webservice.'} =
        'Végrehajtja a beállított műveletet minden eseménynél (mint egy meghívó) minden egyes beállított webszolgáltatáshoz.';
    $Self->{Translation}->{'Planned end time'} = 'Tervezett befejezési idő';
    $Self->{Translation}->{'Planned start time'} = 'Tervezett kezdési idő';
    $Self->{Translation}->{'Print the change.'} = 'A változás nyomtatása.';
    $Self->{Translation}->{'Print the workorder.'} = 'A munkamegrendelés nyomtatása.';
    $Self->{Translation}->{'Projected Service Availability'} = 'Tervezett szolgáltatáselérhetőség';
    $Self->{Translation}->{'Projected Service Availability (PSA)'} = 'Tervezett szolgáltatáselérhetőség (PSA)';
    $Self->{Translation}->{'Projected Service Availability (PSA) of changes. Overview of approved changes and their services.'} =
        'A változás tervezett szolgáltatáselérhetősége (PSA). A jóváhagyott változások és azok szolgáltatásainak áttekintése.';
    $Self->{Translation}->{'Requested time'} = 'Kért idő';
    $Self->{Translation}->{'Required privileges in order for an agent to take a workorder.'} =
        'A szükséges jogosultságok annak érdekében, hogy egy ügyintéző felvehessen egy munkamegrendelést.';
    $Self->{Translation}->{'Required privileges to access the overview of all changes.'} = 'A szükséges jogosultságok az összes változás áttekintőjének hozzáféréséhez.';
    $Self->{Translation}->{'Required privileges to add a workorder.'} = 'A szükséges jogosultságok egy munkamegrendelés hozzáadásához.';
    $Self->{Translation}->{'Required privileges to change the workorder agent.'} = 'A szükséges jogosultságok egy munkamegrendelés ügyintézőjének megváltoztatásához.';
    $Self->{Translation}->{'Required privileges to create a template from a change.'} = 'A szükséges jogosultságok egy sablon létrehozásához egy változásból.';
    $Self->{Translation}->{'Required privileges to create a template from a changes\' CAB.'} =
        'A szükséges jogosultságok egy sablon létrehozásához a változások CAB-jéből.';
    $Self->{Translation}->{'Required privileges to create a template from a workorder.'} = 'A szükséges jogosultságok egy sablon létrehozásához egy munkamegrendelésből.';
    $Self->{Translation}->{'Required privileges to create changes from templates.'} = 'A szükséges jogosultságok változások létrehozásához sablonokból.';
    $Self->{Translation}->{'Required privileges to create changes.'} = 'A szükséges jogosultságok változások létrehozásához.';
    $Self->{Translation}->{'Required privileges to delete a template.'} = 'A szükséges jogosultságok egy sablon törléséhez.';
    $Self->{Translation}->{'Required privileges to delete a workorder.'} = 'A szükséges jogosultságok egy munkamegrendelés törléséhez.';
    $Self->{Translation}->{'Required privileges to delete changes.'} = 'A szükséges jogosultságok változások törléséhez.';
    $Self->{Translation}->{'Required privileges to edit a template.'} = 'A szükséges jogosultságok egy sablon szerkesztéséhez.';
    $Self->{Translation}->{'Required privileges to edit a workorder.'} = 'A szükséges jogosultságok egy munkamegrendelés szerkesztéséhez.';
    $Self->{Translation}->{'Required privileges to edit changes.'} = 'A szükséges jogosultságok változások szerkesztéséhez.';
    $Self->{Translation}->{'Required privileges to edit the conditions of changes.'} = 'A szükséges jogosultságok változások feltételeinek szerkesztéséhez.';
    $Self->{Translation}->{'Required privileges to edit the content of a template.'} = 'A szükséges jogosultságok egy sablon tartalmának szerkesztéséhez.';
    $Self->{Translation}->{'Required privileges to edit the involved persons of a change.'} =
        'A szükséges jogosultságok egy változásban érintett személyek szerkesztéséhez.';
    $Self->{Translation}->{'Required privileges to move changes in time.'} = 'A szükséges jogosultságok a változások áthelyezéséhez az időben.';
    $Self->{Translation}->{'Required privileges to print a change.'} = 'A szükséges jogosultságok egy változás kinyomtatásához.';
    $Self->{Translation}->{'Required privileges to reset changes.'} = 'A szükséges jogosultságok változások visszaállításához.';
    $Self->{Translation}->{'Required privileges to view a workorder.'} = 'A szükséges jogosultságok egy munkamegrendelés megtekintéséhez.';
    $Self->{Translation}->{'Required privileges to view changes.'} = 'A szükséges jogosultságok változások megtekintéséhez.';
    $Self->{Translation}->{'Required privileges to view list of changes where the user is a CAB member.'} =
        'A szükséges jogosultságok azon változások listájának megtekintéséhez, ahol a felhasználó egy CAB-tag.';
    $Self->{Translation}->{'Required privileges to view list of changes where the user is the change manager.'} =
        'A szükséges jogosultságok azon változások listájának megtekintéséhez, ahol a felhasználó a változásmenedzser.';
    $Self->{Translation}->{'Required privileges to view overview over all templates.'} = 'A szükséges jogosultságok az összes sablon áttekintőjének megtekintéséhez.';
    $Self->{Translation}->{'Required privileges to view the conditions of changes.'} = 'A szükséges jogosultságok változások feltételeinek megtekintéséhez.';
    $Self->{Translation}->{'Required privileges to view the history of a change.'} = 'A szükséges jogosultságok egy változás előzményeinek megtekintéséhez.';
    $Self->{Translation}->{'Required privileges to view the history of a workorder.'} = 'A szükséges jogosultságok egy munkamegrendelés előzményeinek megtekintéséhez.';
    $Self->{Translation}->{'Required privileges to view the history zoom of a change.'} = 'A szükséges jogosultságok egy változás előzményei nagyításának megtekintéséhez.';
    $Self->{Translation}->{'Required privileges to view the history zoom of a workorder.'} =
        'A szükséges jogosultságok egy munkamegrendelés előzményei nagyításának megtekintéséhez.';
    $Self->{Translation}->{'Required privileges to view the list of Change Schedule.'} = 'A szükséges jogosultságok a változtatási ütemterv listájának megtekintéséhez.';
    $Self->{Translation}->{'Required privileges to view the list of change PSA.'} = 'A szükséges jogosultságok a változás PSA listájának megtekintéséhez.';
    $Self->{Translation}->{'Required privileges to view the list of changes with an upcoming PIR (Post Implementation Review).'} =
        'A szükséges jogosultságok egy közelgő PIR-rel (megvalósítás utáni vizsgálattal) rendelkező változások listájának megtekintéséhez.';
    $Self->{Translation}->{'Required privileges to view the list of own changes.'} = 'A szükséges jogosultságok a saját változások listájának megtekintéséhez.';
    $Self->{Translation}->{'Required privileges to view the list of own workorders.'} = 'A szükséges jogosultságok a saját munkamegrendelések listájának megtekintéséhez.';
    $Self->{Translation}->{'Required privileges to write a report for the workorder.'} = 'A szükséges jogosultságok egy jelentés írásához a munkamegrendelésnél.';
    $Self->{Translation}->{'Reset a change and its workorders.'} = 'Egy változás és a munkamegrendeléseinek visszaállítása.';
    $Self->{Translation}->{'Reset change and its workorders.'} = 'A változás és munkamegrendeléseinek visszaállítása.';
    $Self->{Translation}->{'Run task to check if specific times have been reached in changes and workorders.'} =
        'Feladat futtatása annak ellenőrzéséhez, hogy a meghatározott időpontokat elérték-e a változásokban és a munkamegrendelésekben.';
    $Self->{Translation}->{'Save change as a template.'} = 'Változás mentése sablonként.';
    $Self->{Translation}->{'Save workorder as a template.'} = 'Munkamegrendelés mentése sablonként.';
    $Self->{Translation}->{'Schedule'} = 'Ütemterv';
    $Self->{Translation}->{'Screen after creating a workorder'} = 'Egy munkamegrendelés létrehozása utáni képernyő';
    $Self->{Translation}->{'Search Changes'} = 'Változások keresése';
    $Self->{Translation}->{'Search Changes.'} = 'Változások keresése.';
    $Self->{Translation}->{'Selects the change number generator module. "AutoIncrement" increments the change number, the SystemID and the counter are used with SystemID.counter format (e.g. 100118, 100119). With "Date", the change numbers will be generated by the current date and a counter; this format looks like Year.Month.Day.counter, e.g. 2010062400001, 2010062400002. With "DateChecksum", the counter will be appended as checksum to the string of date plus the SystemID. The checksum will be rotated on a daily basis. This format looks like Year.Month.Day.SystemID.Counter.CheckSum, e.g. 2010062410000017, 2010062410000026.'} =
        'Kiválasztja a változásszám előállító modult. Az „AutoIncrement” növeli a változásszámot, ahol a rendszer-azonosítót és a számlálót a RendszerID.számláló formátummal használja (például 100118, 100119). A „Date” értékkel a változásszámokat az aktuális dátum és a számláló fogja előállítani. A formátum így néz ki: Év.Hónap.Nap.számláló (például 2010062400001, 2010062400002). A „DateChecksum” használatával a számláló ellenőrzőösszegként lesz hozzáfűzve a dátum és a rendszer-azonosító szövegéhez. Az ellenőrzőösszeg naponta fog átfordulni. A formátum így néz ki: Év.Hónap.Nap.RendszerID.Számláló.EllÖsszeg (például 2010062410000017, 2010062410000026).';
    $Self->{Translation}->{'Set the agent for the workorder.'} = 'Az ügyintéző beállítása a munkamegrendeléshez.';
    $Self->{Translation}->{'Set the default height (in pixels) of inline HTML fields in the change zoom screen and workorder zoom screen of the agent interface.'} =
        'A beágyazott HTML mezők alapértelmezett magasságának beállítása (képpontban) az ügyintézői felület változásnagyítás képernyőjén és munkamegrendelés-nagyítás képernyőjén.';
    $Self->{Translation}->{'Set the maximum height (in pixels) of inline HTML fields in the change zoom screen and workorder zoom screen of the agent interface.'} =
        'A beágyazott HTML mezők legnagyobb magasságának beállítása (képpontban) az ügyintézői felület változásnagyítás képernyőjén és munkamegrendelés-nagyítás képernyőjén.';
    $Self->{Translation}->{'Sets the minimal change counter size (if "AutoIncrement" was selected as ITSMChange::NumberGenerator). Default is 5, this means the counter starts from 10000.'} =
        'Beállítja a legkisebb változásszámláló méretet (ha „AutoIncrement” lett kiválasztva ITSM változás::Számelőállítóként) Az alapértelmezett 5, amely azt jelenti, hogy a számláló 10000-től fog indulni.';
    $Self->{Translation}->{'Sets up the state machine for changes.'} = 'Beállítja az állapotgépet a változásoknál.';
    $Self->{Translation}->{'Sets up the state machine for workorders.'} = 'Beállítja az állapotgépet a munkamegrendeléseknél.';
    $Self->{Translation}->{'Shows a checkbox in the workorder edit screen of the agent interface that defines if the the following workorders should also be moved if a workorder is modified and the planned end time has changed.'} =
        'Egy jelölőnégyzetet jelenít meg az ügyintézői felület munkamegrendelés szerkesztése képernyőjén, amely azt határozza meg, hogy a következő munkamegrendeléseket is át kell-e helyezni, ha egy munkamegrendelés módosult és a tervezett befejezési idő megváltozott.';
    $Self->{Translation}->{'Shows a link in the menu that allows changing the workorder agent, in the zoom view of the workorder of the agent interface.'} =
        'Egy hivatkozást jelenít meg a menüben, amely lehetővé teszi a munkamegrendelés ügyintézőjének megváltoztatását az ügyintézői felület munkamegrendelésének nagyítási nézetén.';
    $Self->{Translation}->{'Shows a link in the menu that allows defining a change as a template in the zoom view of the change, in the agent interface.'} =
        'Egy hivatkozást jelenít meg a menüben, amely lehetővé teszi egy változás sablonként való meghatározását a változás nagyítás nézetében az ügyintézői felületen.';
    $Self->{Translation}->{'Shows a link in the menu that allows defining a workorder as a template in the zoom view of the workorder, in the agent interface.'} =
        'Egy hivatkozást jelenít meg a menüben, amely lehetővé teszi egy munkamegrendelés sablonként való meghatározását a munkamegrendelés nagyított nézetében az ügyintézői felületen.';
    $Self->{Translation}->{'Shows a link in the menu that allows editing the report of a workorder, in the zoom view of the workorder of the agent interface.'} =
        'Egy hivatkozást jelenít meg a menüben, amely lehetővé teszi egy munkamegrendelés jelentésének szerkesztését az ügyintézői felület munkamegrendelésének nagyítási nézetén.';
    $Self->{Translation}->{'Shows a link in the menu that allows linking a change with another object in the change zoom view of the agent interface.'} =
        'Egy hivatkozást jelenít meg a menüben, amely lehetővé teszi egy változás összekapcsolását egy másik objektummal az ügyintézői felület változás nagyítás nézetében.';
    $Self->{Translation}->{'Shows a link in the menu that allows linking a workorder with another object in the zoom view of the workorder of the agent interface.'} =
        'Egy hivatkozást jelenít meg a menüben, amely lehetővé teszi egy munkamegrendelés összekapcsolását egy másik objektummal az ügyintézői felület munkamegrendelésének nagyítási nézetén.';
    $Self->{Translation}->{'Shows a link in the menu that allows moving the time slot of a change in its zoom view of the agent interface.'} =
        'Egy hivatkozást jelenít meg a menüben, amely lehetővé teszi egy változás időrésének áthelyezését az ügyintézői felületen az elem nagyítási nézetében.';
    $Self->{Translation}->{'Shows a link in the menu that allows taking a workorder in the its zoom view of the agent interface.'} =
        'Egy hivatkozást jelenít meg a menüben, amely lehetővé teszi egy munkamegrendelés felvételét annak nagyítási nézetén az ügyintézői felületen.';
    $Self->{Translation}->{'Shows a link in the menu to access the conditions of a change in the its zoom view of the agent interface.'} =
        'Egy hivatkozást jelenít meg a menüben egy változás feltételeinek eléréséhez az ügyintézői felületen az elem nagyítási nézetében.';
    $Self->{Translation}->{'Shows a link in the menu to access the history of a change in the its zoom view of the agent interface.'} =
        'Egy hivatkozást jelenít meg a menüben egy változás előzményeinek eléréséhez az ügyintézői felületen az elem nagyítási nézetében.';
    $Self->{Translation}->{'Shows a link in the menu to access the history of a workorder in the its zoom view of the agent interface.'} =
        'Egy hivatkozást jelenít meg a menüben egy munkamegrendelés előzményeinek hozzáféréséhez annak nagyítási nézetén az ügyintézői felületen.';
    $Self->{Translation}->{'Shows a link in the menu to add a workorder in the change zoom view of the agent interface.'} =
        'Egy hivatkozást jelenít meg a menüben egy munkamegrendelés hozzáadásához az ügyintézői felület változásnagyítás nézetén.';
    $Self->{Translation}->{'Shows a link in the menu to delete a change in its zoom view of the agent interface.'} =
        'Egy hivatkozást jelenít meg a menüben egy változás törléséhez az ügyintézői felületen az elem nagyítási nézetében.';
    $Self->{Translation}->{'Shows a link in the menu to delete a workorder in its zoom view of the agent interface.'} =
        'Egy hivatkozást jelenít meg a menüben egy munkamegrendelés törléséhez annak nagyítási nézetén az ügyintézői felületen.';
    $Self->{Translation}->{'Shows a link in the menu to edit a change in the its zoom view of the agent interface.'} =
        'Egy hivatkozást jelenít meg a menüben egy változás szerkesztéséhez az ügyintézői felületen az elem nagyítási nézetében.';
    $Self->{Translation}->{'Shows a link in the menu to edit a workorder in the its zoom view of the agent interface.'} =
        'Egy hivatkozást jelenít meg a menüben egy munkamegrendelés szerkesztéséhez annak nagyítási nézetén az ügyintézői felületen.';
    $Self->{Translation}->{'Shows a link in the menu to go back in the change zoom view of the agent interface.'} =
        'Egy hivatkozást jelenít meg a menüben az ügyintézői felület változás nagyítási nézetébe való visszatéréshez.';
    $Self->{Translation}->{'Shows a link in the menu to go back in the workorder zoom view of the agent interface.'} =
        'Egy hivatkozást jelenít meg a menüben az ügyintézői felület munkamegrendelés nagyítási nézethez való visszatéréshez.';
    $Self->{Translation}->{'Shows a link in the menu to print a change in the its zoom view of the agent interface.'} =
        'Egy hivatkozást jelenít meg a menüben egy változás nyomtatásához az ügyintézői felületen az elem nagyítási nézetében.';
    $Self->{Translation}->{'Shows a link in the menu to print a workorder in the its zoom view of the agent interface.'} =
        'Egy hivatkozást jelenít meg a menüben egy munkamegrendelés nyomtatásához annak nagyítási nézetén az ügyintézői felületen.';
    $Self->{Translation}->{'Shows a link in the menu to reset a change and its workorders in its zoom view of the agent interface.'} =
        'Egy hivatkozást jelenít meg a menüben egy változás és annak munkamegrendelései visszaállításához az ügyintézői felületen az elem nagyítási nézetében.';
    $Self->{Translation}->{'Shows a link in the menu to show the involved persons in a change, in the zoom view of the change in the agent interface.'} =
        'Egy hivatkozást jelenít meg a menüben egy változásban érintett személyek megjelenítéséhez a változás nagyítás nézetében az ügyintézői felületen.';
    $Self->{Translation}->{'Shows the change history (reverse ordered) in the agent interface.'} =
        'Megjeleníti a változás előzményeit (fordított sorrendben) az ügyintézői felületen.';
    $Self->{Translation}->{'State Machine'} = 'Állapotgép';
    $Self->{Translation}->{'Stores change and workorder ids and their corresponding template id, while a user is editing a template.'} =
        'Változás- és munkamegrendelés-azonosítókat, valamint a nekik megfelelő sablonazonosítót tárolja, miközben egy felhasználó szerkeszt egy sablont.';
    $Self->{Translation}->{'Take Workorder'} = 'Munkamegrendelés felvétele';
    $Self->{Translation}->{'Take Workorder.'} = 'Munkamegrendelés felvétele.';
    $Self->{Translation}->{'Take the workorder.'} = 'A munkamegrendelés felvétele.';
    $Self->{Translation}->{'Template Overview'} = 'Sablon áttekintő';
    $Self->{Translation}->{'Template type'} = 'Sablontípus';
    $Self->{Translation}->{'Template.'} = 'Sablon.';
    $Self->{Translation}->{'The identifier for a change, e.g. Change#, MyChange#. The default is Change#.'} =
        'Egy változás azonosítója, például Change#, MyChange#. Az alapértelmezett: Change#.';
    $Self->{Translation}->{'The identifier for a workorder, e.g. Workorder#, MyWorkorder#. The default is Workorder#.'} =
        'Egy munkamegrendelés azonosítója, például Workorder#, MyWorkorder#. Az alapértelmezett: Workorder#.';
    $Self->{Translation}->{'This ACL module restricts the usuage of the ticket types that are defined in the sysconfig option \'ITSMChange::AddChangeLinkTicketTypes\', to users of the groups as defined in "ITSMChange::RestrictTicketTypes::Groups". As this ACL could collide with other ACLs which are also related to the ticket type, this sysconfig option is disabled by default and should only be activated if needed.'} =
        'Ez az ACL modul korlátozza az „ITSMChange::AddChangeLinkTicketTypes” rendszerbeállítási lehetőségben meghatározott jegytípusok használatát az „ITSMChange::RestrictTicketTypes::Groups” csoportban meghatározott felhasználókra. Mivel ez az ACL ütközhet más olyan ACL-ekkel, amelyek szintén a jegytípussal vannak összefüggésben, ezért ez a rendszerbeállítási lehetőség alapértelmezetten le van tiltva, és csak akkor kell aktiválni, ha szükséges.';
    $Self->{Translation}->{'Time Slot'} = 'Időrés';
    $Self->{Translation}->{'Types of tickets, where in the ticket zoom view a link to add a change will be displayed.'} =
        'Jegyek típusai, ahol a jegy nagyítás nézetben egy változás hozzáadására mutató hivatkozás lesz megjelenítve.';
    $Self->{Translation}->{'User Search'} = 'Felhasználókeresés';
    $Self->{Translation}->{'Workorder Add (from template).'} = 'Munkamegrendelés hozzáadása (sablonból).';
    $Self->{Translation}->{'Workorder Add.'} = 'Munkamegrendelés hozzáadása.';
    $Self->{Translation}->{'Workorder Agent.'} = 'Munkamegrendelés ügyintézője.';
    $Self->{Translation}->{'Workorder Delete.'} = 'Munkamegrendelés törlése.';
    $Self->{Translation}->{'Workorder Edit.'} = 'Munkamegrendelés szerkesztése.';
    $Self->{Translation}->{'Workorder History Zoom.'} = 'Munkamegrendelés előzményeinek nagyítása.';
    $Self->{Translation}->{'Workorder History.'} = 'Munkamegrendelés előzményei.';
    $Self->{Translation}->{'Workorder Report.'} = 'Munkamegrendelés jelentése.';
    $Self->{Translation}->{'Workorder Zoom'} = 'Munkamegrendelés nagyítása';
    $Self->{Translation}->{'Workorder Zoom.'} = 'Munkamegrendelés nagyítása.';
    $Self->{Translation}->{'once'} = 'egyszer';
    $Self->{Translation}->{'regularly'} = 'rendszeresen';


    push @{ $Self->{JavaScriptStrings} //= [] }, (
    'Cancel',
    'Delete',
    'Delete Action',
    'Delete Condition',
    'Delete Expression',
    'Delete Notification',
    'Do you really want to delete this action?',
    'Do you really want to delete this condition?',
    'Do you really want to delete this expression?',
    'Do you really want to delete this notification language?',
    'Do you really want to delete this notification?',
    'No',
    'Ok',
    'Please enter at least one search value or * to find anything.',
    'Settings',
    'Submit',
    'Yes',
    );

}

1;
