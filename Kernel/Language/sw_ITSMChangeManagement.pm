# --
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::sw_ITSMChangeManagement;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # TT Template: Kernel/Output/HTML/Templates/Standard/AdminITSMChangeCIPAllocate.tt
    $Self->{Translation}->{'Manage the priority result of combinating Category ↔ Impact.'} =
        'Simamia matokeo ya kipaumbele cha Kategoria zinazochanganywa ↔ Athari.';
    $Self->{Translation}->{'Category ↔ Impact ↔ Priority'} = 'Kategoria↔ Athari↔ Kipaumbele';
    $Self->{Translation}->{'Priority allocation'} = 'Utengaji wa kipaumbele';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AdminITSMChangeNotification.tt
    $Self->{Translation}->{'Add Notification Rule'} = 'Ongeza Sheria ya Taarifa';
    $Self->{Translation}->{'Filter for notification rules'} = '';
    $Self->{Translation}->{'ITSM ChangeManagement Notification Management'} = 'Usimamizi wa Taarifa za ITSM UsimamiziMabadiliko';
    $Self->{Translation}->{'Edit Notification Rule'} = '';
    $Self->{Translation}->{'A notification should have a name!'} = 'Taarifa lazima iwe na jina!';
    $Self->{Translation}->{'Name is required.'} = 'Jina linatakiwa.';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AdminITSMStateMachine.tt
    $Self->{Translation}->{'Select a catalog class!'} = 'Chagua tabaka la katalogi!';
    $Self->{Translation}->{'A catalog class is required!'} = 'Tabaka la katalogi linatakiwa!';
    $Self->{Translation}->{'Add a state transition'} = 'Ongeza mpito wa hali';
    $Self->{Translation}->{'Admin State Machine'} = 'Mashine ya Hali ya Msimamizi';
    $Self->{Translation}->{'Catalog Class'} = 'Tabaka Katalogi';
    $Self->{Translation}->{'Object Name'} = 'Jina la Kitu';
    $Self->{Translation}->{'Overview over state transitions for'} = 'Mapitio ya mapito ya hali ya';
    $Self->{Translation}->{'Delete this state transition'} = 'Futa hali hii ya mpito';
    $Self->{Translation}->{'Add a new state transition for'} = 'Ongeza hali mpya ya mpito ya';
    $Self->{Translation}->{'Please select a state!'} = 'Tafadhali chagua hali!';
    $Self->{Translation}->{'Please select a next state!'} = 'Tafadhali chagua hali inayofuata!';
    $Self->{Translation}->{'Edit a state transition for'} = 'Hariri hali ya mpito ya';
    $Self->{Translation}->{'Do you really want to delete the state transition'} = 'Kweli unataka kufuta hali ya mpito';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeAdd.tt
    $Self->{Translation}->{'Add Change'} = 'Ongeza Mabadiliko';
    $Self->{Translation}->{'Justification'} = 'Uhalali';
    $Self->{Translation}->{'Input invalid.'} = 'Ingizo batili.';
    $Self->{Translation}->{'Requested Date'} = 'Tarehe Iliyoombwa';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeAddFromTemplate.tt
    $Self->{Translation}->{'Select Change Template'} = 'Chagua Badili Kiolezo';
    $Self->{Translation}->{'Time type'} = 'Aina ya muda';
    $Self->{Translation}->{'Invalid time type.'} = 'Aina batili ya muda.';
    $Self->{Translation}->{'New time'} = 'Mda mpya';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeCABTemplate.tt
    $Self->{Translation}->{'Save Change CAB as template'} = 'Hifadhi Mabadiliko ya CAB kama kiolezo';
    $Self->{Translation}->{'go to involved persons screen'} = 'nenda kwenye skrini ya watu wanaohusika';
    $Self->{Translation}->{'Invalid Name'} = 'Jina Batili';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeCondition.tt
    $Self->{Translation}->{'Conditions and Actions'} = 'Masharti na Vitendo';
    $Self->{Translation}->{'Delete Condition'} = 'Futa Sharti';
    $Self->{Translation}->{'Add new condition'} = 'Ongeza sharti jipya';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeConditionEdit.tt
    $Self->{Translation}->{'Edit Condition'} = '';
    $Self->{Translation}->{'Need a valid name.'} = 'Inahitaji jina halali.';
    $Self->{Translation}->{'A valid name is needed.'} = '';
    $Self->{Translation}->{'Duplicate name:'} = 'Jina limejirudia:';
    $Self->{Translation}->{'This name is already used by another condition.'} = 'Hili jina tayari limetumika na sharti jingine.';
    $Self->{Translation}->{'Matching'} = 'Lingana';
    $Self->{Translation}->{'Any expression (OR)'} = 'Usemi wowote (AU)';
    $Self->{Translation}->{'All expressions (AND)'} = 'Smi zote (NA)';
    $Self->{Translation}->{'Expressions'} = 'Semi';
    $Self->{Translation}->{'Selector'} = 'Kiteuzi';
    $Self->{Translation}->{'Operator'} = 'Opereta';
    $Self->{Translation}->{'Delete Expression'} = 'Futa Usemi';
    $Self->{Translation}->{'No Expressions found.'} = 'Hakuna Semi zilizopatikana.';
    $Self->{Translation}->{'Add new expression'} = 'Ongeza usemi mpya';
    $Self->{Translation}->{'Delete Action'} = 'Futa Kitendo';
    $Self->{Translation}->{'No Actions found.'} = 'Hakuna vitendo vilivyopatikana.';
    $Self->{Translation}->{'Add new action'} = 'Ongeza kitendo kipya';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeDelete.tt
    $Self->{Translation}->{'Do you really want to delete this change?'} = 'Kweli unataka kufuta mabadiliko haya?';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeEdit.tt
    $Self->{Translation}->{'Edit %s%s'} = '';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeHistory.tt
    $Self->{Translation}->{'History of %s%s'} = '';
    $Self->{Translation}->{'Workorder'} = 'Oda ya kazi';
    $Self->{Translation}->{'Createtime'} = 'Muda wa kutengeneza';
    $Self->{Translation}->{'Show details'} = 'Onyesha undani';
    $Self->{Translation}->{'Show workorder'} = 'Onyesha oda ya kazi';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeHistoryZoom.tt
    $Self->{Translation}->{'Detailed history information of %s'} = '';
    $Self->{Translation}->{'Modified'} = 'Rekebishwa';
    $Self->{Translation}->{'Old Value'} = 'Thamani ya Zamani';
    $Self->{Translation}->{'New Value'} = 'Thamani Mpya';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeInvolvedPersons.tt
    $Self->{Translation}->{'Edit Involved Persons of %s%s'} = '';
    $Self->{Translation}->{'Involved Persons'} = 'Watu waliohusika';
    $Self->{Translation}->{'ChangeManager'} = 'MenejaMabadiliko';
    $Self->{Translation}->{'User invalid.'} = 'Mtumiaji batili.';
    $Self->{Translation}->{'ChangeBuilder'} = 'MjenziMabadiliko';
    $Self->{Translation}->{'Change Advisory Board'} = 'Bodi ya Ushauri ya Mabadiliko';
    $Self->{Translation}->{'CAB Template'} = 'Kiolezo cha CAB';
    $Self->{Translation}->{'Apply Template'} = 'Omba Kiolezo';
    $Self->{Translation}->{'NewTemplate'} = 'Kiolezo Kipya';
    $Self->{Translation}->{'Save this CAB as template'} = 'Hifadhi hii CAB kama kiolezo';
    $Self->{Translation}->{'Add to CAB'} = 'Ongeza kwa CAB';
    $Self->{Translation}->{'Invalid User'} = 'Mtumiaji Batili';
    $Self->{Translation}->{'Current CAB'} = 'CAB ya sasa';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeOverviewNavBar.tt
    $Self->{Translation}->{'Context Settings'} = 'Mipangilio ya Muktadha';
    $Self->{Translation}->{'Changes per page'} = 'Mabadiliko kwa kurasa';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeOverviewSmall.tt
    $Self->{Translation}->{'Workorder Title'} = '';
    $Self->{Translation}->{'Change Title'} = '';
    $Self->{Translation}->{'Workorder Agent'} = '';
    $Self->{Translation}->{'Change Builder'} = 'Meneja Mjenzi';
    $Self->{Translation}->{'Change Manager'} = 'Meneja Mabadiliko';
    $Self->{Translation}->{'Workorders'} = 'Oda za kazi';
    $Self->{Translation}->{'Change State'} = '';
    $Self->{Translation}->{'Workorder State'} = '';
    $Self->{Translation}->{'Workorder Type'} = '';
    $Self->{Translation}->{'Requested Time'} = 'Muda Ulioombwa';
    $Self->{Translation}->{'Planned Start Time'} = '';
    $Self->{Translation}->{'Planned End Time'} = '';
    $Self->{Translation}->{'Actual Start Time'} = '';
    $Self->{Translation}->{'Actual End Time'} = '';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeReset.tt
    $Self->{Translation}->{'Do you really want to reset this change?'} = 'Kweli unataka kuweka upya mabadiliko haya?';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeSearch.tt
    $Self->{Translation}->{'(e.g. 10*5155 or 105658*)'} = '(mf. 10*5155 au 105658*)';
    $Self->{Translation}->{'CAB Agent'} = '';
    $Self->{Translation}->{'e.g.'} = 'mf.';
    $Self->{Translation}->{'CAB Customer'} = '';
    $Self->{Translation}->{'ITSM Change'} = 'Mabadiliko ya ITSM';
    $Self->{Translation}->{'ITSM Workorder Instruction'} = '';
    $Self->{Translation}->{'ITSM Workorder Report'} = '';
    $Self->{Translation}->{'ITSM Change Priority'} = '';
    $Self->{Translation}->{'ITSM Change Impact'} = '';
    $Self->{Translation}->{'Change Category'} = 'Badili Kategoria';
    $Self->{Translation}->{'(before/after)'} = '(kabla/baada)';
    $Self->{Translation}->{'(between)'} = '(katikati)';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeTemplate.tt
    $Self->{Translation}->{'Save Change as Template'} = 'Hifadhi Mabadiliko kama Kiolezo';
    $Self->{Translation}->{'A template should have a name!'} = 'Kiolezo lazima kiwe na jina!';
    $Self->{Translation}->{'The template name is required.'} = 'Jina la kiolezo linahitajika.';
    $Self->{Translation}->{'Reset States'} = 'Seti Upya Hali';
    $Self->{Translation}->{'Overwrite original template'} = 'Andika juu ya kiolezo halisi';
    $Self->{Translation}->{'Delete original change'} = 'Futa mabadiliko halisi';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeTimeSlot.tt
    $Self->{Translation}->{'Move Time Slot'} = 'Sogeza Kipengele cha Muda';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeZoom.tt
    $Self->{Translation}->{'Change Information'} = 'Badili Taarifa';
    $Self->{Translation}->{'Planned Effort'} = '';
    $Self->{Translation}->{'Accounted Time'} = '';
    $Self->{Translation}->{'Change Initiator(s)'} = 'Badili Vianzishi';
    $Self->{Translation}->{'CAB'} = 'CAB';
    $Self->{Translation}->{'Last changed'} = 'Mara ya mwisho imebadilishwa';
    $Self->{Translation}->{'Last changed by'} = 'Mara ya mwisho imebadilishwa na';
    $Self->{Translation}->{'To open links in the following description blocks, you might need to press Ctrl or Cmd or Shift key while clicking the link (depending on your browser and OS).'} =
        '';
    $Self->{Translation}->{'Download Attachment'} = 'Pakua Kiambatanisho';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMTemplateEditCAB.tt
    $Self->{Translation}->{'Edit CAB Template'} = 'Hariri kiolezo cha CAB';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMTemplateEditContent.tt
    $Self->{Translation}->{'This will create a new change from this template, so you can edit and save it.'} =
        'Hii itatengeneza mabadiliko mapya kutoka kwenye hiki kiolezo, ili uweze kuhariri na kuhifadhi.';
    $Self->{Translation}->{'The new change will be deleted automatically after it has been saved as template.'} =
        'Mabadiliko mapya yatafutwa kiotomatiki baada ya kuhifadhiwa kama kiolezo.';
    $Self->{Translation}->{'This will create a new workorder from this template, so you can edit and save it.'} =
        'Hii itatengeneza oda mpya ya kazi kutoka kwenye kiolezo hiki, ili uweze kuihariri na kuihifadhi.';
    $Self->{Translation}->{'A temporary change will be created which contains the workorder.'} =
        'Mabadiliko ya muda yatatengenezwa yenye oda ya kazi.';
    $Self->{Translation}->{'The temporary change and new workorder will be deleted automatically after the workorder has been saved as template.'} =
        'Mabadiliko ya muda na oda ya kazi mpya yatafutwa kiotomatiki baada ya oda ya kazi kuhifadhiwa kama kiolezo.';
    $Self->{Translation}->{'Do you want to proceed?'} = 'Unataka kuendelea?';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMTemplateOverviewSmall.tt
    $Self->{Translation}->{'Template ID'} = '';
    $Self->{Translation}->{'Edit Content'} = 'Hariri Maudhui';
    $Self->{Translation}->{'Create by'} = '';
    $Self->{Translation}->{'Change by'} = '';
    $Self->{Translation}->{'Change Time'} = '';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderAdd.tt
    $Self->{Translation}->{'Add Workorder to %s%s'} = '';
    $Self->{Translation}->{'Instruction'} = 'Melekezo';
    $Self->{Translation}->{'Invalid workorder type.'} = 'Aina batili ya oda ya kazi';
    $Self->{Translation}->{'The planned start time must be before the planned end time!'} = 'Muda uliopangwa wa kuanza unatakiwa kuwa kabla ya muda uliopangwa wa kumaliza!';
    $Self->{Translation}->{'Invalid format.'} = 'Umbizo batili.';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderAddFromTemplate.tt
    $Self->{Translation}->{'Select Workorder Template'} = 'Chagua Kiolezo cha Oda ya kazi';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderAgent.tt
    $Self->{Translation}->{'Edit Workorder Agent of %s%s'} = '';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderDelete.tt
    $Self->{Translation}->{'Do you really want to delete this workorder?'} = 'Kweli unataka kufuta oda hii ya kazi?';
    $Self->{Translation}->{'You can not delete this Workorder. It is used in at least one Condition!'} =
        'Huwezi kufuta oda hii ya kazi. Inatumika japo kwenye sharti moja!';
    $Self->{Translation}->{'This Workorder is used in the following Condition(s)'} = 'Hii oda ya kazi inatumika kwenye Masharti yafuatayo.';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderEdit.tt
    $Self->{Translation}->{'Edit %s%s-%s'} = '';
    $Self->{Translation}->{'Move following workorders accordingly'} = 'Hamisha oda za kazi zifuatazo ipasavyo';
    $Self->{Translation}->{'If the planned end time of this workorder is changed, the planned start times of all following workorders will be changed accordingly'} =
        'Kama muda wa kumaliza wa oda ya kazi hii umebadilishwa, muda wa kuanza wa oda za kazi zote zinazofuata zitabadilika';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderHistory.tt
    $Self->{Translation}->{'History of %s%s-%s'} = '';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderReport.tt
    $Self->{Translation}->{'Edit Report of %s%s-%s'} = '';
    $Self->{Translation}->{'Report'} = 'Ripoti';
    $Self->{Translation}->{'The actual start time must be before the actual end time!'} = 'Muda halisi wa kuanza lazima uwe kabla ya muda halisi wa kumaliza!';
    $Self->{Translation}->{'The actual start time must be set, when the actual end time is set!'} =
        'Muda halisi wa kuanza lazima usetiwe, pale muda wa kumaliza umesetiwa!';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderTake.tt
    $Self->{Translation}->{'Current Agent'} = 'Wakala wa sasa';
    $Self->{Translation}->{'Do you really want to take this workorder?'} = 'Kweli unataka kuchukua oda hii ya kazi?';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderTemplate.tt
    $Self->{Translation}->{'Save Workorder as Template'} = 'Hifadhi Oda ya kazi kama Kiolezo';
    $Self->{Translation}->{'Delete original workorder (and surrounding change)'} = 'Futa oda halisi ya kazi (na mabadiliko yanayoizunguka)';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderZoom.tt
    $Self->{Translation}->{'Workorder Information'} = 'Taarifa ya Oda ya kazi';

    # Perl Module: Kernel/Modules/AdminITSMChangeNotification.pm
    $Self->{Translation}->{'Notification Added!'} = '';
    $Self->{Translation}->{'Unknown notification %s!'} = '';
    $Self->{Translation}->{'There was an error creating the notification.'} = '';

    # Perl Module: Kernel/Modules/AdminITSMStateMachine.pm
    $Self->{Translation}->{'State Transition Updated!'} = '';
    $Self->{Translation}->{'State Transition Added!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMChange.pm
    $Self->{Translation}->{'ITSM Changes'} = 'Mabadiliko ya ITSM';

    # Perl Module: Kernel/Modules/AgentITSMChangeAdd.pm
    $Self->{Translation}->{'Ticket with TicketID %s does not exist!'} = '';
    $Self->{Translation}->{'Missing sysconfig option "ITSMChange::AddChangeLinkTicketTypes"!'} =
        '';
    $Self->{Translation}->{'Was not able to add change!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMChangeAddFromTemplate.pm
    $Self->{Translation}->{'Was not able to create change from template!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMChangeCABTemplate.pm
    $Self->{Translation}->{'No ChangeID is given!'} = '';
    $Self->{Translation}->{'No change found for changeID %s.'} = '';
    $Self->{Translation}->{'The CAB of change "%s" could not be serialized.'} = '';
    $Self->{Translation}->{'Could not add the template.'} = '';

    # Perl Module: Kernel/Modules/AgentITSMChangeCondition.pm
    $Self->{Translation}->{'Change "%s" not found in database!'} = '';
    $Self->{Translation}->{'Could not delete ConditionID %s!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMChangeConditionEdit.pm
    $Self->{Translation}->{'No %s is given!'} = '';
    $Self->{Translation}->{'Could not create new condition!'} = '';
    $Self->{Translation}->{'Could not update ConditionID %s!'} = '';
    $Self->{Translation}->{'Could not update ExpressionID %s!'} = '';
    $Self->{Translation}->{'Could not add new Expression!'} = '';
    $Self->{Translation}->{'Could not update ActionID %s!'} = '';
    $Self->{Translation}->{'Could not add new Action!'} = '';
    $Self->{Translation}->{'Could not delete ExpressionID %s!'} = '';
    $Self->{Translation}->{'Could not delete ActionID %s!'} = '';
    $Self->{Translation}->{'Error: Unknown field type "%s"!'} = '';
    $Self->{Translation}->{'ConditionID %s does not belong to the given ChangeID %s!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMChangeDelete.pm
    $Self->{Translation}->{'Change "%s" does not have an allowed change state to be deleted!'} =
        '';
    $Self->{Translation}->{'Was not able to delete the changeID %s!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMChangeEdit.pm
    $Self->{Translation}->{'Was not able to update Change!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMChangeHistory.pm
    $Self->{Translation}->{'Can\'t show history, as no ChangeID is given!'} = '';
    $Self->{Translation}->{'Change "%s" not found in the database!'} = '';
    $Self->{Translation}->{'Unknown type "%s" encountered!'} = '';
    $Self->{Translation}->{'Change History'} = '';

    # Perl Module: Kernel/Modules/AgentITSMChangeHistoryZoom.pm
    $Self->{Translation}->{'Can\'t show history zoom, no HistoryEntryID is given!'} = '';
    $Self->{Translation}->{'HistoryEntry "%s" not found in database!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMChangeInvolvedPersons.pm
    $Self->{Translation}->{'Was not able to update Change CAB for Change %s!'} = '';
    $Self->{Translation}->{'Was not able to update Change %s!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMChangeMyCAB.pm
    $Self->{Translation}->{'My CAB'} = '';

    # Perl Module: Kernel/Modules/AgentITSMChangeMyChanges.pm
    $Self->{Translation}->{'My Changes'} = 'Mabadiliko Yangu';

    # Perl Module: Kernel/Modules/AgentITSMChangeMyWorkOrders.pm
    $Self->{Translation}->{'My Workorders'} = '';

    # Perl Module: Kernel/Modules/AgentITSMChangePIR.pm
    $Self->{Translation}->{'PIR'} = '';

    # Perl Module: Kernel/Modules/AgentITSMChangePSA.pm
    $Self->{Translation}->{'PSA'} = '';

    # Perl Module: Kernel/Modules/AgentITSMChangePrint.pm
    $Self->{Translation}->{'WorkOrder "%s" not found in database!'} = '';
    $Self->{Translation}->{'Can\'t create output, as the workorder is not attached to a change!'} =
        '';
    $Self->{Translation}->{'Can\'t create output, as no ChangeID is given!'} = '';
    $Self->{Translation}->{'unknown change title'} = '';
    $Self->{Translation}->{'ITSM Workorder'} = 'Oda ya kazi ya ITSM';
    $Self->{Translation}->{'WorkOrderNumber'} = 'NambariYaOdaYaKazi';
    $Self->{Translation}->{'WorkOrderTitle'} = 'Kichwa cha habari cha Oda ya Kazi';
    $Self->{Translation}->{'unknown workorder title'} = '';
    $Self->{Translation}->{'ChangeState'} = 'BadiliHali';
    $Self->{Translation}->{'PlannedEffort'} = 'JuhudiIliyopangwa';
    $Self->{Translation}->{'CAB Agents'} = '';
    $Self->{Translation}->{'CAB Customers'} = '';
    $Self->{Translation}->{'RequestedTime'} = 'MudaUlioombwa';
    $Self->{Translation}->{'PlannedStartTime'} = 'MudaKuanzaUliopangwa';
    $Self->{Translation}->{'PlannedEndTime'} = 'MudaKuishaUliopangwa';
    $Self->{Translation}->{'ActualStartTime'} = 'MudaHalisiKuanza';
    $Self->{Translation}->{'ActualEndTime'} = 'MudaHalisiKumaliza';
    $Self->{Translation}->{'ChangeTime'} = 'BadilishaMuda';
    $Self->{Translation}->{'ChangeNumber'} = 'BadiliNambari';
    $Self->{Translation}->{'WorkOrderState'} = 'HaliYaOdaYaKazi';
    $Self->{Translation}->{'WorkOrderType'} = 'AinaYaOdaYaKazi';
    $Self->{Translation}->{'WorkOrderAgent'} = 'WakalaWaOdaYaKazi';
    $Self->{Translation}->{'ITSM Workorder Overview (%s)'} = '';

    # Perl Module: Kernel/Modules/AgentITSMChangeReset.pm
    $Self->{Translation}->{'Was not able to reset WorkOrder %s of Change %s!'} = '';
    $Self->{Translation}->{'Was not able to reset Change %s!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMChangeSchedule.pm
    $Self->{Translation}->{'Change Schedule'} = 'Badili Ratiba';

    # Perl Module: Kernel/Modules/AgentITSMChangeSearch.pm
    $Self->{Translation}->{'Change Search'} = '';
    $Self->{Translation}->{'ChangeTitle'} = 'Badili Kicha cha Habari';
    $Self->{Translation}->{'WorkOrders'} = 'Oda za kazi';
    $Self->{Translation}->{'Change Search Result'} = '';
    $Self->{Translation}->{'Change Number'} = '';
    $Self->{Translation}->{'Work Order Title'} = '';
    $Self->{Translation}->{'Change Description'} = '';
    $Self->{Translation}->{'Change Justification'} = '';
    $Self->{Translation}->{'WorkOrder Instruction'} = '';
    $Self->{Translation}->{'WorkOrder Report'} = '';
    $Self->{Translation}->{'Change Priority'} = '';
    $Self->{Translation}->{'Change Impact'} = '';
    $Self->{Translation}->{'Created By'} = '';
    $Self->{Translation}->{'WorkOrder State'} = '';
    $Self->{Translation}->{'WorkOrder Type'} = '';
    $Self->{Translation}->{'WorkOrder Agent'} = '';
    $Self->{Translation}->{'before'} = '';

    # Perl Module: Kernel/Modules/AgentITSMChangeTemplate.pm
    $Self->{Translation}->{'The change "%s" could not be serialized.'} = '';
    $Self->{Translation}->{'Could not update the template "%s".'} = '';
    $Self->{Translation}->{'Could not delete change "%s".'} = '';

    # Perl Module: Kernel/Modules/AgentITSMChangeTimeSlot.pm
    $Self->{Translation}->{'The change can\'t be moved, as it has no workorders.'} = '';
    $Self->{Translation}->{'Add a workorder first.'} = '';
    $Self->{Translation}->{'Can\'t move a change which already has started!'} = '';
    $Self->{Translation}->{'Please move the individual workorders instead.'} = '';
    $Self->{Translation}->{'The current %s could not be determined.'} = '';
    $Self->{Translation}->{'The %s of all workorders has to be defined.'} = '';
    $Self->{Translation}->{'Was not able to move time slot for workorder #%s!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMTemplateDelete.pm
    $Self->{Translation}->{'You need %s permission!'} = '';
    $Self->{Translation}->{'No TemplateID is given!'} = '';
    $Self->{Translation}->{'Template "%s" not found in database!'} = '';
    $Self->{Translation}->{'Was not able to delete the template %s!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMTemplateEdit.pm
    $Self->{Translation}->{'Was not able to update Template %s!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMTemplateEditCAB.pm
    $Self->{Translation}->{'Was not able to update Template "%s"!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMTemplateEditContent.pm
    $Self->{Translation}->{'Was not able to create change!'} = '';
    $Self->{Translation}->{'Was not able to create workorder from template!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderAdd.pm
    $Self->{Translation}->{'You need %s permissions on the change!'} = '';
    $Self->{Translation}->{'Was not able to add workorder!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderAgent.pm
    $Self->{Translation}->{'No WorkOrderID is given!'} = '';
    $Self->{Translation}->{'Was not able to set the workorder agent of the workorder "%s" to empty!'} =
        '';
    $Self->{Translation}->{'Was not able to update the workorder "%s"!'} = '';
    $Self->{Translation}->{'Could not find Change for WorkOrder %s!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderDelete.pm
    $Self->{Translation}->{'Was not able to delete the workorder %s!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderEdit.pm
    $Self->{Translation}->{'Was not able to update WorkOrder %s!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderHistory.pm
    $Self->{Translation}->{'Can\'t show history, as no WorkOrderID is given!'} = '';
    $Self->{Translation}->{'WorkOrder "%s" not found in the database!'} = '';
    $Self->{Translation}->{'WorkOrder History'} = '';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderHistoryZoom.pm
    $Self->{Translation}->{'History entry "%s" not found in the database!'} = '';
    $Self->{Translation}->{'WorkOrder History Zoom'} = '';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderTake.pm
    $Self->{Translation}->{'Was not able to take the workorder %s!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderTemplate.pm
    $Self->{Translation}->{'The workorder "%s" could not be serialized.'} = '';

    # Perl Module: Kernel/Output/HTML/Layout/ITSMChange.pm
    $Self->{Translation}->{'Need config option %s!'} = '';
    $Self->{Translation}->{'Config option %s needs to be a HASH ref!'} = '';
    $Self->{Translation}->{'No config option found for the view "%s"!'} = '';
    $Self->{Translation}->{'Title: %s | Type: %s'} = '';

    # Perl Module: Kernel/Output/HTML/ToolBar/MyCAB.pm
    $Self->{Translation}->{'My CABs'} = 'CAB zangu';

    # Perl Module: Kernel/Output/HTML/ToolBar/MyWorkOrders.pm
    $Self->{Translation}->{'My Work Orders'} = '';

    # Perl Module: Kernel/System/ITSMChange/History.pm
    $Self->{Translation}->{'%s: %s'} = '';
    $Self->{Translation}->{'New Action (ID=%s)'} = '';
    $Self->{Translation}->{'Action (ID=%s) deleted'} = '';
    $Self->{Translation}->{'All Actions of Condition (ID=%s) deleted'} = '';
    $Self->{Translation}->{'Action (ID=%s) executed: %s'} = '';
    $Self->{Translation}->{'%s (Action ID=%s): (new=%s, old=%s)'} = '';
    $Self->{Translation}->{'Change (ID=%s) reached actual end time.'} = '';
    $Self->{Translation}->{'Change (ID=%s) reached actual start time.'} = '';
    $Self->{Translation}->{'New Change (ID=%s)'} = '';
    $Self->{Translation}->{'New Attachment: %s'} = '';
    $Self->{Translation}->{'Deleted Attachment %s'} = '';
    $Self->{Translation}->{'CAB Deleted %s'} = '';
    $Self->{Translation}->{'%s: (new=%s, old=%s)'} = '';
    $Self->{Translation}->{'Link to %s (ID=%s) added'} = '';
    $Self->{Translation}->{'Link to %s (ID=%s) deleted'} = '';
    $Self->{Translation}->{'Notification sent to %s (Event: %s)'} = '';
    $Self->{Translation}->{'Change (ID=%s) reached planned end time.'} = '';
    $Self->{Translation}->{'Change (ID=%s) reached planned start time.'} = '';
    $Self->{Translation}->{'Change (ID=%s) reached requested time.'} = '';
    $Self->{Translation}->{'New Condition (ID=%s)'} = '';
    $Self->{Translation}->{'Condition (ID=%s) deleted'} = '';
    $Self->{Translation}->{'All Conditions of Change (ID=%s) deleted'} = '';
    $Self->{Translation}->{'%s (Condition ID=%s): (new=%s, old=%s)'} = '';
    $Self->{Translation}->{'New Expression (ID=%s)'} = '';
    $Self->{Translation}->{'Expression (ID=%s) deleted'} = '';
    $Self->{Translation}->{'All Expressions of Condition (ID=%s) deleted'} = '';
    $Self->{Translation}->{'%s (Expression ID=%s): (new=%s, old=%s)'} = '';
    $Self->{Translation}->{'Workorder (ID=%s) reached actual end time.'} = '';
    $Self->{Translation}->{'Workorder (ID=%s) reached actual start time.'} = '';
    $Self->{Translation}->{'New Workorder (ID=%s)'} = '';
    $Self->{Translation}->{'New Attachment for WorkOrder: %s'} = '';
    $Self->{Translation}->{'(ID=%s) New Attachment for WorkOrder: %s'} = '';
    $Self->{Translation}->{'Deleted Attachment from WorkOrder: %s'} = '';
    $Self->{Translation}->{'(ID=%s) Deleted Attachment from WorkOrder: %s'} = '';
    $Self->{Translation}->{'New Report Attachment for WorkOrder: %s'} = '';
    $Self->{Translation}->{'(ID=%s) New Report Attachment for WorkOrder: %s'} = '';
    $Self->{Translation}->{'Deleted Report Attachment from WorkOrder: %s'} = '';
    $Self->{Translation}->{'(ID=%s) Deleted Report Attachment from WorkOrder: %s'} = '';
    $Self->{Translation}->{'Workorder (ID=%s) deleted'} = '';
    $Self->{Translation}->{'(ID=%s) Link to %s (ID=%s) added'} = '';
    $Self->{Translation}->{'(ID=%s) Link to %s (ID=%s) deleted'} = '';
    $Self->{Translation}->{'(ID=%s) Notification sent to %s (Event: %s)'} = '';
    $Self->{Translation}->{'Workorder (ID=%s) reached planned end time.'} = '';
    $Self->{Translation}->{'Workorder (ID=%s) reached planned start time.'} = '';
    $Self->{Translation}->{'(ID=%s) %s: (new=%s, old=%s)'} = '';

    # Perl Module: Kernel/System/ITSMChange/ITSMCondition/Object/ITSMWorkOrder.pm
    $Self->{Translation}->{'all'} = 'yote';
    $Self->{Translation}->{'any'} = 'yoyote';

    # Perl Module: Kernel/System/ITSMChange/Notification.pm
    $Self->{Translation}->{'Previous Change Builder'} = '';
    $Self->{Translation}->{'Previous Change Manager'} = '';
    $Self->{Translation}->{'Workorder Agents'} = '';
    $Self->{Translation}->{'Previous Workorder Agent'} = '';
    $Self->{Translation}->{'Change Initiators'} = '';
    $Self->{Translation}->{'Group ITSMChange'} = '';
    $Self->{Translation}->{'Group ITSMChangeBuilder'} = '';
    $Self->{Translation}->{'Group ITSMChangeManager'} = '';

    # XML Definition: ITSMChangeManagement.sopm
    $Self->{Translation}->{'requested'} = 'ombwa';
    $Self->{Translation}->{'pending approval'} = 'kibali kinasubiri';
    $Self->{Translation}->{'rejected'} = 'kataliwa';
    $Self->{Translation}->{'approved'} = 'kubaliwa';
    $Self->{Translation}->{'in progress'} = 'kwenye maendeleo';
    $Self->{Translation}->{'pending pir'} = 'pir inasubiri';
    $Self->{Translation}->{'successful'} = 'mafanikio';
    $Self->{Translation}->{'failed'} = 'Shindwa';
    $Self->{Translation}->{'canceled'} = 'sitishwa';
    $Self->{Translation}->{'retracted'} = 'ondoa';
    $Self->{Translation}->{'created'} = 'tengenezwa';
    $Self->{Translation}->{'accepted'} = 'kubaliwa';
    $Self->{Translation}->{'ready'} = 'tayari';
    $Self->{Translation}->{'approval'} = 'kibali';
    $Self->{Translation}->{'workorder'} = 'oda ya kazi';
    $Self->{Translation}->{'backout'} = 'kujitoa';
    $Self->{Translation}->{'decision'} = 'maamuzi';
    $Self->{Translation}->{'pir'} = 'baada ya utekelezaji wa mapitio';
    $Self->{Translation}->{'ChangeStateID'} = '';
    $Self->{Translation}->{'CategoryID'} = '';
    $Self->{Translation}->{'ImpactID'} = '';
    $Self->{Translation}->{'PriorityID'} = '';
    $Self->{Translation}->{'ChangeManagerID'} = '';
    $Self->{Translation}->{'ChangeBuilderID'} = '';
    $Self->{Translation}->{'WorkOrderStateID'} = '';
    $Self->{Translation}->{'WorkOrderTypeID'} = '';
    $Self->{Translation}->{'WorkOrderAgentID'} = '';
    $Self->{Translation}->{'is'} = 'ni';
    $Self->{Translation}->{'is not'} = 'siyo';
    $Self->{Translation}->{'is empty'} = 'ni tupu';
    $Self->{Translation}->{'is not empty'} = 'siyo tupu';
    $Self->{Translation}->{'is greater than'} = 'ni kubwa zaidi ya';
    $Self->{Translation}->{'is less than'} = 'ni ndogo zaidi ya';
    $Self->{Translation}->{'is before'} = 'ni kabla';
    $Self->{Translation}->{'is after'} = 'ni baada';
    $Self->{Translation}->{'contains'} = 'vyenye';
    $Self->{Translation}->{'not contains'} = 'haina kitu';
    $Self->{Translation}->{'begins with'} = 'inaanza na';
    $Self->{Translation}->{'ends with'} = 'inaishia na';
    $Self->{Translation}->{'set'} = 'seti';

    # JS File: var/httpd/htdocs/js/ITSM.Admin.ChangeManagement.ChangeNotification.js
    $Self->{Translation}->{'Delete Notification'} = '';

    # JS File: var/httpd/htdocs/js/ITSM.Agent.ChangeManagement.Condition.js
    $Self->{Translation}->{'Do you really want to delete this expression?'} = '';
    $Self->{Translation}->{'Do you really want to delete this action?'} = '';
    $Self->{Translation}->{'Do you really want to delete this condition?'} = '';

    # JS File: var/httpd/htdocs/js/ITSM.Agent.ChangeManagement.ConfirmDialog.js
    $Self->{Translation}->{'Ok'} = 'Sawa';

    # SysConfig
    $Self->{Translation}->{'A list of the agents who have permission to take workorders. Key is a login name. Content is 0 or 1.'} =
        'Orodha ya mawakala wenye ruhusa ya kuchukua oda za kazi. Muhimu ni jina la kuingia. Iliyomo ni 0 au 1.';
    $Self->{Translation}->{'A list of workorder states, at which the ActualStartTime of a workorder will be set if it was empty at this point.'} =
        'Orodha ya hali za oda ya kazi, ambapo MudaHalisiKuanza wa oda ya kazi utasetiwa kama ulikuwa wazi katika pointi hii.';
    $Self->{Translation}->{'Actual end time'} = '';
    $Self->{Translation}->{'Actual start time'} = '';
    $Self->{Translation}->{'Add Workorder'} = 'Ongeza Oda ya kazi';
    $Self->{Translation}->{'Add Workorder (from Template)'} = '';
    $Self->{Translation}->{'Add a change from template.'} = '';
    $Self->{Translation}->{'Add a change.'} = '';
    $Self->{Translation}->{'Add a workorder (from template) to the change.'} = '';
    $Self->{Translation}->{'Add a workorder to the change.'} = '';
    $Self->{Translation}->{'Add from template'} = 'Ongeza kutoka kwenye kiolezo';
    $Self->{Translation}->{'Admin of the CIP matrix.'} = 'Msimamizi wa matriki ya CIP.';
    $Self->{Translation}->{'Admin of the state machine.'} = 'Msimamizi wa mashine ya hali.';
    $Self->{Translation}->{'Agent interface notification module to see the number of change advisory boards.'} =
        'Moduli taarifa ya kiolesura cha wakala kuonyesha idadi ya bodi za ushauri wa mabadiliko.';
    $Self->{Translation}->{'Agent interface notification module to see the number of changes managed by the user.'} =
        'Moduli taarifa ya kiolesura cha wakala kuona idadi ya mabadiliko yanayosimamiwa na mtumiaji.';
    $Self->{Translation}->{'Agent interface notification module to see the number of changes.'} =
        'Moduli taarifa ya kiolesura cha wakala kuona idadi ya mabadiliko.';
    $Self->{Translation}->{'Agent interface notification module to see the number of workorders.'} =
        '';
    $Self->{Translation}->{'CAB Member Search'} = '';
    $Self->{Translation}->{'Cache time in minutes for the change management toolbars. Default: 3 hours (180 minutes).'} =
        'Muda wa hifadhi muda kwa dakika kwa ajili ya mwambaa zana za usimamizi wa mabadiliko. Chaguo-msingi: Masaa 3 (Dakika 180).';
    $Self->{Translation}->{'Cache time in minutes for the change management. Default: 5 days (7200 minutes).'} =
        'Muda wa hifadhi muda kwa dakika kwa ajili ya usimamizi wa mabadiliko. Chaguo-msingi: Siku 5 (Dakika 7200).';
    $Self->{Translation}->{'Change CAB Templates'} = '';
    $Self->{Translation}->{'Change History.'} = '';
    $Self->{Translation}->{'Change Involved Persons.'} = '';
    $Self->{Translation}->{'Change Overview "Small" Limit'} = 'Mapitio ya Mabadiliko Kikomo "cha chini"';
    $Self->{Translation}->{'Change Overview.'} = '';
    $Self->{Translation}->{'Change Print.'} = '';
    $Self->{Translation}->{'Change Schedule.'} = '';
    $Self->{Translation}->{'Change Settings'} = '';
    $Self->{Translation}->{'Change Zoom'} = '';
    $Self->{Translation}->{'Change Zoom.'} = '';
    $Self->{Translation}->{'Change and Workorder Templates'} = '';
    $Self->{Translation}->{'Change and workorder templates edited by this user.'} = '';
    $Self->{Translation}->{'Change area.'} = '';
    $Self->{Translation}->{'Change involved persons of the change.'} = '';
    $Self->{Translation}->{'Change limit per page for Change Overview "Small".'} = '';
    $Self->{Translation}->{'Change number'} = '';
    $Self->{Translation}->{'Change search backend router of the agent interface.'} = 'Kipanga njia cha mazingira ya nyuma ya kiolesura cha wakala cha kutafuta mabadiliko.';
    $Self->{Translation}->{'Change state'} = '';
    $Self->{Translation}->{'Change time'} = '';
    $Self->{Translation}->{'Change title'} = '';
    $Self->{Translation}->{'Condition Edit'} = 'Sharti Hariri';
    $Self->{Translation}->{'Condition Overview'} = '';
    $Self->{Translation}->{'Configure which screen should be shown after a new workorder has been created.'} =
        '';
    $Self->{Translation}->{'Configures how often the notifications are sent when planned the start time or other time values have been reached/passed.'} =
        'Ina sanidi ni kwa mara ngapi taarifa zinatumwa pale muda uliopangwa wa kuanza au mida mingine inapofikiwa/kupitwa.';
    $Self->{Translation}->{'Create Change'} = 'Tengeneza Mabadiliko';
    $Self->{Translation}->{'Create Change (from Template)'} = '';
    $Self->{Translation}->{'Create a change (from template) from this ticket.'} = '';
    $Self->{Translation}->{'Create a change from this ticket.'} = '';
    $Self->{Translation}->{'Create and manage ITSM Change Management notifications.'} = '';
    $Self->{Translation}->{'Create and manage change notifications.'} = '';
    $Self->{Translation}->{'Default type for a workorder. This entry must exist in general catalog class \'ITSM::ChangeManagement::WorkOrder::Type\'.'} =
        'Chaguo-msingi la aina ya oda ya kazi. Hili ingizo lazima liwepo katika tabaka la katalogi la ujumla \'ITSM::UsimamiziMabadiliko::Oda ya Kazi::Aina\' .';
    $Self->{Translation}->{'Define Actions where a settings button is available in the linked objects widget (LinkObject::ViewMode = "complex"). Please note that these Actions must have registered the following JS and CSS files: Core.AllocationList.css, Core.UI.AllocationList.js, Core.UI.Table.Sort.js, Core.Agent.TableFilters.js and Core.Agent.LinkObject.js.'} =
        '';
    $Self->{Translation}->{'Define the signals for each workorder state.'} = 'Fafanua ishara kwa kila hali ya oda ya kazi.';
    $Self->{Translation}->{'Define which columns are shown in the linked Changes widget (LinkObject::ViewMode = "complex"). Note: Only Change attributes are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.'} =
        '';
    $Self->{Translation}->{'Define which columns are shown in the linked Workorder widget (LinkObject::ViewMode = "complex"). Note: Only Workorder attributes are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.'} =
        '';
    $Self->{Translation}->{'Defines an overview module to show the small view of a change list.'} =
        'Inafafanua moduli ya mapitio kuonyesha muonekano mdogo wa orodha ya mabadiliko.';
    $Self->{Translation}->{'Defines an overview module to show the small view of a template list.'} =
        'Inafafanua moduli ya mapitio kuonyesha muonekano mdogo wa orodha ya kiolezo.';
    $Self->{Translation}->{'Defines if it will be possible to print the accounted time.'} = 'Inafafanua kama itawezekana kufafanua muda wa uhasibu.';
    $Self->{Translation}->{'Defines if it will be possible to print the planned effort.'} = 'Inafafanua kama itawezekana kuchapisha juhudi zilizopangwa.';
    $Self->{Translation}->{'Defines if reachable (as defined by the state machine) change end states should be allowed if a change is in a locked state.'} =
        'Inafafanua kama hali za mwisho za mabadiliko zinazopatikana (kama ilivyofafanuliwa na mashine ya hali) ziruhusiwe kama mabadiliko yako kwenye hali iliyofungwa.';
    $Self->{Translation}->{'Defines if reachable (as defined by the state machine) workorder end states should be allowed if a workorder is in a locked state.'} =
        'Inafafanua kama hali za mwisho za oda za kazi zinazopatikana (kama ilivyofafanuliwa na mashine ya hali) ziruhusiwe kama oda ya kazi iko kwenye hali iliyofungwa.';
    $Self->{Translation}->{'Defines if the accounted time should be shown.'} = 'Inafafanua kama muda uliohesabiwa uonyeshwe.';
    $Self->{Translation}->{'Defines if the actual start and end times should be set.'} = 'Inafafanua kama muda halisi wa kuanza na kumaliza usetiwe.';
    $Self->{Translation}->{'Defines if the change search and the workorder search functions could use the mirror DB.'} =
        'Amefafanua kama Change utafutaji na Workorder tafuta kazi inaweza kutumia kioo DB.';
    $Self->{Translation}->{'Defines if the change state can be set in the change edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines if the planned effort should be shown.'} = 'Inafafanua kama juhudi zilizopangwa zionyeshwe.';
    $Self->{Translation}->{'Defines if the requested date should be print by customer.'} = 'Inafafanua kama tarehe iliyoombwa ichapishwe na mteja.';
    $Self->{Translation}->{'Defines if the requested date should be searched by customer.'} =
        'Inafafanua kama tarehe iliyoombwa itafutwe na mteja.';
    $Self->{Translation}->{'Defines if the requested date should be set by customer.'} = 'Inafafanua kama tarehe iliyoombwa isetiwe na mteja.';
    $Self->{Translation}->{'Defines if the requested date should be shown by customer.'} = 'Inafafanua kama tarehe iliyoombwa ionyeshwe na mteja.';
    $Self->{Translation}->{'Defines if the workorder state should be shown.'} = 'Inafafanua kama hali ya oda ya kazi ionyeshwe.';
    $Self->{Translation}->{'Defines if the workorder title should be shown.'} = 'Inafafanua kama kichwa cha habari cha oda ya kazi kionyeshwe.';
    $Self->{Translation}->{'Defines shown graph attributes.'} = 'Inafafanua sifa za jedwali lililoonyeshwa.';
    $Self->{Translation}->{'Defines that only changes containing Workorders linked with services, which the customer user has permission to use will be shown. Any other changes will not be displayed.'} =
        'Inafafanua kwamba mabadiliko yenye oda za kazi zilizounganishwa na huduma, ambazo mteja ana ruhusa ya kutumia zitaonyeshwa. Mabadiliko mengine yoyote hayataonyeshwa.';
    $Self->{Translation}->{'Defines the change states that will be allowed to delete.'} = 'Inafafanua hali za mabadiliko zinazoruhusiwa kufuta.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the Change PSA overview.'} =
        'Inafafanua hali za mabadiliko ambazo zitatumika kama vichujio katika Mapitio ya Mabadiliko ya PSA.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the Change Schedule overview.'} =
        'Inafafanua hali za mabadiliko ambazo zitatumika kama vichujio katika mapitio ya Ratiba za Mabadiliko.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the MyCAB overview.'} =
        'Inafafanua hali za mabadiliko ambazo zitatumika kama vichujio katika mapitio ya MyCAB.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the MyChanges overview.'} =
        'Inafafanua hali za mabadiliko ambazo zitatumika kama vichujio katika mapitio ya MabadilikoYangu.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the change manager overview.'} =
        'Inafafanua hali za mabadiliko ambazo zitatumika kama vichujio katika mapitio ya meneja mabadiliko.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the change overview.'} =
        'Inafafanua hali za mabadiliko ambazo zitatumika kama vichujio katika mapitio ya mabadiliko.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the customer change schedule overview.'} =
        'Inafafanua hali za mabadiliko ambazo zitatumika kama vichujio katika mapitio ya ratiba za mabadiliko ya mteja.';
    $Self->{Translation}->{'Defines the default change title for a dummy change which is needed to edit a workorder template.'} =
        'Inafafanua chaguo-msingi la kichwa cha habari cha mabadiliko kwa ajili ya mabadiliko ya mfano ambayo yanahitajika kuhariri kiolezo cha oda ya kazi.';
    $Self->{Translation}->{'Defines the default sort criteria in the change PSA overview.'} =
        'Inafafanua chaguo-msingi la vigezo vya kupanga katika mapitio ya mabadiliko ya PSA.';
    $Self->{Translation}->{'Defines the default sort criteria in the change manager overview.'} =
        'Inafafanua chaguo-msingi la vigezo vya kupanga katika mapitio ya meneja mabadiliko. ';
    $Self->{Translation}->{'Defines the default sort criteria in the change overview.'} = 'Inafafanua chaguo-msingi la vigezo vya kupanga katika mapitio ya mabadiliko.';
    $Self->{Translation}->{'Defines the default sort criteria in the change schedule overview.'} =
        'Inafafanua chaguo-msingi la vigezo vya kupanga katika mapitio ya mabadiliko ya ratiba.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the MyCAB overview.'} =
        'Inafafanua chaguo-msingi la vigezo vya kupanga katika mapitio ya mabadiliko ya CABYangu.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the MyChanges overview.'} =
        'Inafafanua chaguo-msingi la vigezo vya kupanga katika mapitio ya mabadiliko ya MabadilikoYangu.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the MyWorkorders overview.'} =
        'Inafafanua chaguo-msingi la vigezo vya kupanga katika mapitio ya mabadiliko ya OdaZanguzzaKazi.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the PIR overview.'} =
        'Inafafanua chaguo-msingi la vigezo vya kupanga katika mapitio ya mabadiliko ya PIR.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the customer change schedule overview.'} =
        'Inafafanua chaguo-msingi la vigezo vya kupanga katika mapitio ya mabadiliko ya ratiba ya mabadiliko ya mteja.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the template overview.'} =
        'Inafafanua chaguo-msingi la vigezo vya kupanga katika mapitio ya mabadiliko ya kiolezo.';
    $Self->{Translation}->{'Defines the default sort order in the MyCAB overview.'} = 'Inafafanua chaguo-msingi la utaratibu wa kupanga katika mapitio ya CABYangu.';
    $Self->{Translation}->{'Defines the default sort order in the MyChanges overview.'} = 'Inafafanua chaguo-msingi la utaratibu wa kupanga katika mapitio ya MabadilikoYangu.';
    $Self->{Translation}->{'Defines the default sort order in the MyWorkorders overview.'} =
        'Inafafanua chaguo-msingi la utaratibu wa kupanga katika mapitio ya OdaZanguzaKazi.';
    $Self->{Translation}->{'Defines the default sort order in the PIR overview.'} = 'Inafafanua chaguo-msingi la utaratibu wa kupanga katika mapitio ya PIR.';
    $Self->{Translation}->{'Defines the default sort order in the change PSA overview.'} = 'Inafafanua chaguo-msingi la utaratibu wa kupanga katika mapitio ya mabadiliko ya PSA.';
    $Self->{Translation}->{'Defines the default sort order in the change manager overview.'} =
        'Inafafanua chaguo-msingi la utaratibu wa kupanga katika mapitio ya mabadiliko ya meneja..';
    $Self->{Translation}->{'Defines the default sort order in the change overview.'} = 'Inafafanua chaguo-msingi la utaratibu wa kupanga katika mapitio ya mabadiliko.';
    $Self->{Translation}->{'Defines the default sort order in the change schedule overview.'} =
        'Inafafanua chaguo-msingi la utaratibu wa kupanga katika mapitio ya mabadiliko ya ratiba.';
    $Self->{Translation}->{'Defines the default sort order in the customer change schedule overview.'} =
        'Inafafanua chaguo-msingi la utaratibu wa kupanga katika mapitio ya mabadiliko ya ratiba ya mteja.';
    $Self->{Translation}->{'Defines the default sort order in the template overview.'} = 'Inafafanua chaguo-msingi la utaratibu wa kupanga katika mapitio ya kiolezo.';
    $Self->{Translation}->{'Defines the default value for the category of a change.'} = 'Inafafanua thamani ya chaguo-msingi la kategoria ya mabadiliko.';
    $Self->{Translation}->{'Defines the default value for the impact of a change.'} = 'Inafafanua thamani ya chaguo-msingi la athari ya mabadiliko.';
    $Self->{Translation}->{'Defines the field type of CompareValue fields for change attributes used in the change condition edit screen of the agent interface. Valid values are Selection, Text and Date. If a type is not defined, the field will not be shown.'} =
        '';
    $Self->{Translation}->{'Defines the field type of CompareValue fields for workorder attributes used in the change condition edit screen of the agent interface. Valid values are Selection, Text and Date. If a type is not defined, the field will not be shown.'} =
        '';
    $Self->{Translation}->{'Defines the object attributes that are selectable for change objects in the change condition edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines the object attributes that are selectable for workorder objects in the change condition edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute AccountedTime in the change condition edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ActualEndTime in the change condition edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ActualStartTime in the change condition edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute CategoryID in the change condition edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ChangeBuilderID in the change condition edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ChangeManagerID in the change condition edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ChangeStateID in the change condition edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ChangeTitle in the change condition edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute DynamicField in the change condition edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ImpactID in the change condition edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute PlannedEffort in the change condition edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute PlannedEndTime in the change condition edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute PlannedStartTime in the change condition edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute PriorityID in the change condition edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute RequestedTime in the change condition edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute WorkOrderAgentID in the change condition edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute WorkOrderNumber in the change condition edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute WorkOrderStateID in the change condition edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute WorkOrderTitle in the change condition edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute WorkOrderTypeID in the change condition edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines the period (in years), in which start and end times can be selected.'} =
        'Inafafanua kipindi (kwa miaka), ambapo muda wa kuanza na kumaliza inaweza kuchaguliwa.';
    $Self->{Translation}->{'Defines the shown attributes of a workorder in the tooltip of the workorder graph in the change zoom. To show workorder dynamic fields in the tooltip, they must be specified like DynamicField_WorkOrderFieldName1, DynamicField_WorkOrderFieldName2, etc.'} =
        'Inafafanua sifa zilizoonyeshwa za oda ya kazi katika kidokezozana cha jedwali la oda za kazi katika kuza mabadiliko. Kuonyesha sehemu zinazobadilika za oda ya kazi kwenye kidokezozana, lazima ziwekwe bayana mfano SehemuInayobadilika_OdaYaKaziJinaSehemu1, SehemuInayobadilika_OdaYaKaziJinaSehemu2, na kadh.';
    $Self->{Translation}->{'Defines the shown columns in the Change PSA overview. This option has no effect on the position of the column.'} =
        'Inafafanua safuwima zilizoonyeshwa katika mapitio ya Mabadiliko ya PSA. Hili chaguo halina athari kwa nafasi ya safuwima.';
    $Self->{Translation}->{'Defines the shown columns in the Change Schedule overview. This option has no effect on the position of the column.'} =
        'Inafafanua safuwima zilizoonyeshwa katika mapitio ya Mabadiliko ya Ratiba. Hili chaguo halina athari kwa nafasi ya safuwima.';
    $Self->{Translation}->{'Defines the shown columns in the MyCAB overview. This option has no effect on the position of the column.'} =
        'Inafafanua safuwima zilizoonyeshwa katika mapitio ya CABZangu. Hili chaguo halina athari kwa nafasi ya safuwima.';
    $Self->{Translation}->{'Defines the shown columns in the MyChanges overview. This option has no effect on the position of the column.'} =
        'Inafafanua safuwima zilizoonyeshwa katika mapitio ya MabadilikoYangu. Hili chaguo halina athari kwa nafasi ya safuwima.';
    $Self->{Translation}->{'Defines the shown columns in the MyWorkorders overview. This option has no effect on the position of the column.'} =
        'Inafafanua safuwima zilizoonyeshwa katika mapitio ya OdaZanguZaKazi. Hili chaguo halina athari kwa nafasi ya safuwima.';
    $Self->{Translation}->{'Defines the shown columns in the PIR overview. This option has no effect on the position of the column.'} =
        'Inafafanua safuwima zilizoonyeshwa katika mapitio ya PIR. Hili chaguo halina athari kwa nafasi ya safuwima.';
    $Self->{Translation}->{'Defines the shown columns in the change manager overview. This option has no effect on the position of the column.'} =
        'Inafafanua safuwima zilizoonyeshwa katika mapitio ya meneja mabadiliko. Hili chaguo halina athari kwa nafasi ya safuwima.';
    $Self->{Translation}->{'Defines the shown columns in the change overview. This option has no effect on the position of the column.'} =
        'Inafafanua safuwima zilizoonyeshwa katika mapitio ya mabadiliko. Hili chaguo halina athari kwa nafasi ya safuwima.';
    $Self->{Translation}->{'Defines the shown columns in the change search. This option has no effect on the position of the column.'} =
        'Inafafanua safuwima zilizoonyeshwa katika mabadiliko ya utafutaji. Hili chaguo halina athari kwenye nafasi ya safuwima.';
    $Self->{Translation}->{'Defines the shown columns in the customer change schedule overview. This option has no effect on the position of the column.'} =
        'Inafafanua safuwima zilizoonyeshwa katika mapitio ya ratiba ya mabadiliko ya mteja. Hili chaguo halina athari kwenye nafasi ya safuwima.';
    $Self->{Translation}->{'Defines the shown columns in the template overview. This option has no effect on the position of the column.'} =
        'Inafafanua safuwima zilizoonyeshwa katika mapitio ya kiolezo. Hili chaguo halina athari kwenye nafasi ya safuwima.';
    $Self->{Translation}->{'Defines the signals for each ITSM change state.'} = '';
    $Self->{Translation}->{'Defines the template types that will be used as filters in the template overview.'} =
        'Inafafanua aina ya violezo ambavyo vitatumika kama vichujio katika mapitio ya kiolezo.';
    $Self->{Translation}->{'Defines the workorder states that will be used as filters in the MyWorkorders overview.'} =
        'Inafafanua hali za oda ya kazi ambazo zitatumika kama vichujio katika mapitio ya Oda zangu za kazi.';
    $Self->{Translation}->{'Defines the workorder states that will be used as filters in the PIR overview.'} =
        'Inafafanua hali ya oda za kazi ambazo zitatumika kama vichujio katika mapitio ya PIR.';
    $Self->{Translation}->{'Defines the workorder types that will be used to show the PIR overview.'} =
        'Inafafanua aina za oda za kazi ambazo zitatumika kuonyesha mapitio ya PIR.';
    $Self->{Translation}->{'Defines whether notifications should be sent.'} = 'Inafafanua kama taarifa zitumwe.';
    $Self->{Translation}->{'Delete a change.'} = '';
    $Self->{Translation}->{'Delete the change.'} = '';
    $Self->{Translation}->{'Delete the workorder.'} = '';
    $Self->{Translation}->{'Details of a change history entry.'} = '';
    $Self->{Translation}->{'Determines if an agent can exchange the X-axis of a stat if he generates one.'} =
        'Inaamua kama wakala anaweza kubadilisha jira-X la takwimu kama akitengeneza.';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about changes done for config item classes.'} =
        'Inaamua kama moduli ya kawaida ya takwimu inaweza kutengeneza takwimu kuhusu mabadiliko yaliyofanywa kwenye matabaka ya vipengenele vya usanidi.';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about changes regarding change state updates within a timeperiod.'} =
        'Inaamua kama moduli ya takwimu ya kawaida inaweza kuzalisha takwimu kuhusu mabadiliko kwa kuangalia kisasisho cha mabadiliko ya hali kwa kipindi cha muda.';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about changes regarding the relation between changes and incident tickets.'} =
        'Inaamua kama moduli ya takwimu ya kawaida inaweza kuzalisha takwimu kuhusu mabadiliko kwa kuangalia uhusiano kati ya mabadiliko na tiketi za matukio.';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about changes.'} =
        'Inaamua kama moduli ya takwimu za kawaida inaweza kutengeneza takwimu kuhusu mabadiliko.';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about the number of Rfc tickets a requester created.'} =
        'Inaamua kama moduli ya takwimu za kawaida inaweza kutengeneza takwimu kuhusu idadi ya tiketi za Rfc zilizotengenezwa na muombaji.';
    $Self->{Translation}->{'Dynamic fields (for changes and workorders) shown in the change print screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Dynamic fields shown in the change add screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Dynamic fields shown in the change edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Dynamic fields shown in the change search screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Dynamic fields shown in the change zoom screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Dynamic fields shown in the workorder add screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Dynamic fields shown in the workorder edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Dynamic fields shown in the workorder report screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Dynamic fields shown in the workorder zoom screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'DynamicField event module to handle the update of conditions if dynamic fields are added, updated or deleted.'} =
        'Moduli ya matukio ya SehemuZinazobadilika kushughulikia usasishaji wa masharti kama sehemu zinazobadilika zimeongezwa, zimesasishwa au kufutwa.';
    $Self->{Translation}->{'Edit a change.'} = '';
    $Self->{Translation}->{'Edit the change.'} = '';
    $Self->{Translation}->{'Edit the conditions of the change.'} = '';
    $Self->{Translation}->{'Edit the workorder.'} = '';
    $Self->{Translation}->{'Enables the minimal change counter size (if "Date" was selected as ITSMChange::NumberGenerator).'} =
        '';
    $Self->{Translation}->{'Forward schedule of changes. Overview over approved changes.'} =
        '';
    $Self->{Translation}->{'History Zoom'} = '';
    $Self->{Translation}->{'ITSM Change CAB Templates.'} = '';
    $Self->{Translation}->{'ITSM Change Condition Edit.'} = '';
    $Self->{Translation}->{'ITSM Change Condition Overview.'} = '';
    $Self->{Translation}->{'ITSM Change Manager Overview.'} = '';
    $Self->{Translation}->{'ITSM Change Notifications'} = '';
    $Self->{Translation}->{'ITSM Change PIR Overview.'} = '';
    $Self->{Translation}->{'ITSM Change notification rules'} = '';
    $Self->{Translation}->{'ITSM MyCAB Overview.'} = '';
    $Self->{Translation}->{'ITSM MyChanges Overview.'} = '';
    $Self->{Translation}->{'ITSM MyWorkorders Overview.'} = '';
    $Self->{Translation}->{'ITSM Template Delete.'} = '';
    $Self->{Translation}->{'ITSM Template Edit CAB.'} = '';
    $Self->{Translation}->{'ITSM Template Edit Content.'} = '';
    $Self->{Translation}->{'ITSM Template Edit.'} = '';
    $Self->{Translation}->{'ITSM Template Overview.'} = '';
    $Self->{Translation}->{'ITSM event module that cleans up conditions.'} = 'Moduli ya matukio ya ITSM inaondoa masharti.';
    $Self->{Translation}->{'ITSM event module that deletes the cache for a toolbar.'} = 'Moduli ya matukio ya ITSM inafuta hifadhi muda ya mwambaa zana.';
    $Self->{Translation}->{'ITSM event module that deletes the history of changes.'} = '';
    $Self->{Translation}->{'ITSM event module that matches conditions and executes actions.'} =
        'Moduli ya matukio ya ITSM inayolandanisha masharti na kutekeleza vitendo. ';
    $Self->{Translation}->{'ITSM event module that sends notifications.'} = 'Moduli ya matukio ya ITSM inayotuma taarifa.';
    $Self->{Translation}->{'ITSM event module that updates the history of changes.'} = 'Moduli ya matukio ya ITSM inayosasisha historia ya mabadiliko.';
    $Self->{Translation}->{'ITSM event module that updates the history of conditions.'} = '';
    $Self->{Translation}->{'ITSM event module that updates the history of workorders.'} = '';
    $Self->{Translation}->{'ITSM event module to recalculate the workorder numbers.'} = 'Moduli ya matukio ya ITSM inayopiga upya hesabu ya nambari ya oda za kazi.';
    $Self->{Translation}->{'ITSM event module to set the actual start and end times of workorders.'} =
        'Moduli ya matukio ya ITSM inayoseti muda halisi wa kuanza na kumaliza oda za kazi.';
    $Self->{Translation}->{'ITSMChange'} = 'BadiliITSM';
    $Self->{Translation}->{'ITSMWorkOrder'} = 'ITSMOdaYaKazi';
    $Self->{Translation}->{'If frequency is \'regularly\', you can configure how often the notifications are sent (every X hours).'} =
        '';
    $Self->{Translation}->{'Link another object to the change.'} = '';
    $Self->{Translation}->{'Link another object to the workorder.'} = '';
    $Self->{Translation}->{'List of all change events to be displayed in the GUI.'} = '';
    $Self->{Translation}->{'List of all workorder events to be displayed in the GUI.'} = '';
    $Self->{Translation}->{'Lookup of CAB members for autocompletion.'} = '';
    $Self->{Translation}->{'Lookup of agents, used for autocompletion.'} = '';
    $Self->{Translation}->{'Manage ITSM Change Management state machine.'} = '';
    $Self->{Translation}->{'Manage the category ↔ impact ↔ priority matrix.'} = '';
    $Self->{Translation}->{'Module to check if WorkOrderAdd or WorkOrderAddFromTemplate should be permitted.'} =
        'Moduli ya kukagua kama OngezaOdaYaKazi au OngezaOdaYaKaziKutokaKwenyeKiolezo iruhusiwe.';
    $Self->{Translation}->{'Module to check the CAB members.'} = 'Moduli ya kukagua washiriki wa CAB.';
    $Self->{Translation}->{'Module to check the agent.'} = 'Moduli ya kukagua wakala';
    $Self->{Translation}->{'Module to check the change builder.'} = 'Moduli ya kukagua mjenzi wa mabadiliko.';
    $Self->{Translation}->{'Module to check the change manager.'} = 'Moduli ya kukagua meneja mabadiliko.';
    $Self->{Translation}->{'Module to check the workorder agent.'} = 'Moduli ya kukagua wakala wa oda za kazi.';
    $Self->{Translation}->{'Module to check whether no workorder agent is set.'} = 'Moduli ya kukagua kama hakuna wakala wa oda ya kzi aliyesetiwa.';
    $Self->{Translation}->{'Module to check whether the agent is contained in the configured list.'} =
        'Moduli ya kukagua kama wakala yumo kwenye orodha ya usanidi.';
    $Self->{Translation}->{'Module to show a link to create a change from this ticket. The ticket will be automatically linked with the new change.'} =
        'Moduli ya kuonyesha kiungo cha kutengeneza mabadiliko kutoka kwenye hii tiketi. Tiketi itaunganishwa kiotomatiki na mabadiliko mapya.';
    $Self->{Translation}->{'Move Time Slot.'} = '';
    $Self->{Translation}->{'Move all workorders in time.'} = '';
    $Self->{Translation}->{'New (from template)'} = 'Mpya (kutoka kwenye kiolezo)';
    $Self->{Translation}->{'Only users of these groups have the permission to use the ticket types as defined in "ITSMChange::AddChangeLinkTicketTypes" if the feature "Ticket::Acl::Module###200-Ticket::Acl::Module" is enabled.'} =
        'Watumiaji wa makundi haya tu wana ruhusa ya kutumia aina hii ya tiketi kama ilivyofafanuliwa katika "Badiliko la ITSM::Ongeza aina za tiketi za kiungo cha badiliko" kama kipengele "Tiketi::Acl::Moduli###200-Tiketi::Acl::Moduli" kimewezeshwa.';
    $Self->{Translation}->{'Other Settings'} = 'Mipangilio mingine';
    $Self->{Translation}->{'Overview over all Changes.'} = '';
    $Self->{Translation}->{'PIR (Post Implementation Review)'} = 'Baada ya utekelezaji wa mapitio (PIR)';
    $Self->{Translation}->{'Parameters for the UserCreateWorkOrderNextMask object in the preference view of the agent interface.'} =
        'Vigezo kwa ajili ya kipengele Barakoa ijayo ya mpangilio kazi wa kutengenezwa na mtumiaji katika mandhari ya mapendeleo ya kiolesura cha wakala.';
    $Self->{Translation}->{'Parameters for the pages (in which the changes are shown) of the small change overview.'} =
        'Vigezo kwa ajili vya kurasa(ambapo tiketi zinaonyeshwa) za mapitio ya mabadiliko madogo.';
    $Self->{Translation}->{'Performs the configured action for each event (as an Invoker) for each configured Webservice.'} =
        'Fanya kitecndo cha usanidishwaji kwa kila tukio (kama Kichochezi) kwa kila huduma ya wavuti iliyosanidiwa.';
    $Self->{Translation}->{'Planned end time'} = '';
    $Self->{Translation}->{'Planned start time'} = '';
    $Self->{Translation}->{'Print the change.'} = '';
    $Self->{Translation}->{'Print the workorder.'} = '';
    $Self->{Translation}->{'Projected Service Availability'} = '';
    $Self->{Translation}->{'Projected Service Availability (PSA)'} = '';
    $Self->{Translation}->{'Projected Service Availability (PSA) of changes. Overview of approved changes and their services.'} =
        '';
    $Self->{Translation}->{'Requested time'} = '';
    $Self->{Translation}->{'Required privileges in order for an agent to take a workorder.'} =
        'Upendeleo unaotakiwa ili wakala achukue oda ya kazi.';
    $Self->{Translation}->{'Required privileges to access the overview of all changes.'} = 'Upendeleo unaotakiwa ili kufikia mapitio ya mabadiliko yote.';
    $Self->{Translation}->{'Required privileges to add a workorder.'} = 'Upendeleo unaotakiwa ili kuongeza oda ya kazi.';
    $Self->{Translation}->{'Required privileges to change the workorder agent.'} = 'Upendeleo unaotakiwa ili kubadili wakala wa oda ya kazi.';
    $Self->{Translation}->{'Required privileges to create a template from a change.'} = 'Upendeleo unaotakiwa ili kutengeneza kiolezo kutoka kwenye mabadiliko. ';
    $Self->{Translation}->{'Required privileges to create a template from a changes\' CAB.'} =
        'Upendeleo unaotakiwa ili kutengeneza kiolezo kutoka kwenye CAB ya mabadiliko.';
    $Self->{Translation}->{'Required privileges to create a template from a workorder.'} = 'Upendeleo unaotakiwa ili kutengeneza kiolezo kutoka kwenye oda ya kazi.';
    $Self->{Translation}->{'Required privileges to create changes from templates.'} = 'Upendeleo unaotakiwa ili kutengeneza mabadiliko kutoka kwenye violezo.';
    $Self->{Translation}->{'Required privileges to create changes.'} = 'Upendeleo unaotakiwa ili kutengeneza mabadiliko.';
    $Self->{Translation}->{'Required privileges to delete a template.'} = 'Upendeleo unaotakiwa ili kufuta kiolezo.';
    $Self->{Translation}->{'Required privileges to delete a workorder.'} = 'Upendeleo unaotakiwa ili kufuta oda ya kazi.';
    $Self->{Translation}->{'Required privileges to delete changes.'} = 'Upendeleo unaotakiwa ili kufuta mabadiliko.';
    $Self->{Translation}->{'Required privileges to edit a template.'} = 'Upendeleo unaotakiwa ili kuhariri kiolezo.';
    $Self->{Translation}->{'Required privileges to edit a workorder.'} = 'Upendeleo unaotakiwa ili kuhariri oda ya kazi.';
    $Self->{Translation}->{'Required privileges to edit changes.'} = 'Upendeleo unaotakiwa ili kuhariri mabadiliko.';
    $Self->{Translation}->{'Required privileges to edit the conditions of changes.'} = 'Upendeleo unaotakiwa ili kuhariri masharti ya mabadiliko.';
    $Self->{Translation}->{'Required privileges to edit the content of a template.'} = 'Upendeleo unaotakiwa ili kuhariri maudhui ya kiolezo.';
    $Self->{Translation}->{'Required privileges to edit the involved persons of a change.'} =
        'Upendeleo unaotakiwa ili kuhaririri watu wanaohusika na mabadiliko.';
    $Self->{Translation}->{'Required privileges to move changes in time.'} = 'Upendeleo unaotakiwa ili kuhamisha mabadiliko kwa muda.';
    $Self->{Translation}->{'Required privileges to print a change.'} = 'Upendeleo unaotakiwa ili kuchapisha mabadiliko.';
    $Self->{Translation}->{'Required privileges to reset changes.'} = 'Upendeleo unaotakiwa ili kuweka upya mabadiliko.';
    $Self->{Translation}->{'Required privileges to view a workorder.'} = 'Upendeleo unaotakiwa ili kuona oda ya kazi.';
    $Self->{Translation}->{'Required privileges to view changes.'} = 'Upendeleo unaotakiwa ili kuona mabadiliko.';
    $Self->{Translation}->{'Required privileges to view list of changes where the user is a CAB member.'} =
        'Upendeleo unaotakiwa ili kuona orodha ya mabadiliko ambapo mtumiaji ni mshirika wa CAB.';
    $Self->{Translation}->{'Required privileges to view list of changes where the user is the change manager.'} =
        'Upendeleo unaotakiwa ili kuona orodha ya mabadiliko ambapo mtumiaji ni meneja mabadiliko.';
    $Self->{Translation}->{'Required privileges to view overview over all templates.'} = 'Upendeleo unaotakiwa ili kuona mapitio ya violezo vyote.';
    $Self->{Translation}->{'Required privileges to view the conditions of changes.'} = 'Upendeleo unaotakiwa ili kuona masharti ya mabadiliko yote.';
    $Self->{Translation}->{'Required privileges to view the history of a change.'} = 'Upendeleo unaotakiwa ili kuona historia ya mabadiliko.';
    $Self->{Translation}->{'Required privileges to view the history of a workorder.'} = 'Upendeleo unaotakiwa ili kuona historia ya oda ya kazi.';
    $Self->{Translation}->{'Required privileges to view the history zoom of a change.'} = 'Upendeleo unaotakiwa ili kuona historia iliyokuzwa  ya mabadiliko.';
    $Self->{Translation}->{'Required privileges to view the history zoom of a workorder.'} =
        'Upendeleo unaotakiwa ili kuona historia iliyokuzwa ya oda ya kazi. ';
    $Self->{Translation}->{'Required privileges to view the list of Change Schedule.'} = 'Upendeleo unaotakiwa ili kuona orodha ya Ratiba ya Mabadiliko.';
    $Self->{Translation}->{'Required privileges to view the list of change PSA.'} = 'Upendeleo unaotakiwa ili kuona orodha ya mabadiliko ya PSA.';
    $Self->{Translation}->{'Required privileges to view the list of changes with an upcoming PIR (Post Implementation Review).'} =
        'Upendeleo unaotakiwa ili kuona orodha ya mabadiliko violezo vyote.';
    $Self->{Translation}->{'Required privileges to view the list of own changes.'} = 'Upendeleo unaotakiwa ili kuona orodha ya mabadiliko yako.';
    $Self->{Translation}->{'Required privileges to view the list of own workorders.'} = 'Upendeleo unaotakiwa ili kuona orodha ya oda zako za kazi.';
    $Self->{Translation}->{'Required privileges to write a report for the workorder.'} = 'Upendeleo unaotakiwa ili kuandika ripoti ya oda ya kazi.';
    $Self->{Translation}->{'Reset a change and its workorders.'} = '';
    $Self->{Translation}->{'Reset change and its workorders.'} = '';
    $Self->{Translation}->{'Run task to check if specific times have been reached in changes and workorders.'} =
        '';
    $Self->{Translation}->{'Save change as a template.'} = '';
    $Self->{Translation}->{'Save workorder as a template.'} = '';
    $Self->{Translation}->{'Schedule'} = '';
    $Self->{Translation}->{'Screen after creating a workorder'} = 'Skrini baada ya kutengeneza oda ya kazi.';
    $Self->{Translation}->{'Search Changes'} = 'Tafuta Mabadiliko';
    $Self->{Translation}->{'Search Changes.'} = '';
    $Self->{Translation}->{'Selects the change number generator module. "AutoIncrement" increments the change number, the SystemID and the counter are used with SystemID.counter format (e.g. 100118, 100119). With "Date", the change numbers will be generated by the current date and a counter; this format looks like Year.Month.Day.counter, e.g. 2010062400001, 2010062400002. With "DateChecksum", the counter will be appended as checksum to the string of date plus the SystemID. The checksum will be rotated on a daily basis. This format looks like Year.Month.Day.SystemID.Counter.CheckSum, e.g. 2010062410000017, 2010062410000026.'} =
        'Chagua module ya kutengeneza namba ya badiliko. "Kuongezeka kwa otomatiki" inaongeza namba ya badiliko, kitambulisho cha mfumo na kihesabuji zinatumika na kitambulisho cha mfumo.umbizo la kihesabuji (mfano 100118, 100119). Na "Tarehe" namba za mabadiliko zitatengenezwa na tarehe ya sasa na kihesabuji; Umbizo linafanana kama hivi Mwaka.Mwezi.Siku.Kitambulisho cha mfumo.Kihesabuji mfano 2010062400001, 2010062400002. Na "Kuangalia jumla kwa tarehe"  kihesabuji kitaambatanishwa kama kiangaliaji jumla kwenye tungo ya tarehe na kitambulisho. Kiangalia jumla kitazungushwa kwa mishingi ya kila siku. Umbizo litafanana kama hivi Mwaka.Mwezi.Siku.Kitambulisho cha mfumo.Kihesabuji mfano 2010062410000017, 2010062410000026.';
    $Self->{Translation}->{'Set the agent for the workorder.'} = '';
    $Self->{Translation}->{'Set the default height (in pixels) of inline HTML fields in the change zoom screen and workorder zoom screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Set the maximum height (in pixels) of inline HTML fields in the change zoom screen and workorder zoom screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Sets the minimal change counter size (if "AutoIncrement" was selected as ITSMChange::NumberGenerator). Default is 5, this means the counter starts from 10000.'} =
        'Inaweka upeo wa chini wa ukubwa wa kihesabuji tiketi (Kama "Inaongezeka otomatiki" imechaguliwa kama Badiliko la ITSM::Kitengeneza namaba za tiketi). Chaguo-msingi ni 5, hii inamaanisha kihesabuji kinaanzia 10000';
    $Self->{Translation}->{'Sets up the state machine for changes.'} = 'Inaseti hali ya mashine kwa mabadiliko.';
    $Self->{Translation}->{'Sets up the state machine for workorders.'} = 'Inaseti hali ya mashine kwa oda za kazi.';
    $Self->{Translation}->{'Shows a checkbox in the workorder edit screen of the agent interface that defines if the the following workorders should also be moved if a workorder is modified and the planned end time has changed.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu that allows changing the workorder agent, in the zoom view of the workorder of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu that allows defining a change as a template in the zoom view of the change, in the agent interface.'} =
        'Inaonyesha kiungo kwenye menyu kinachoruhusu kufafanua mabadiliko kama kiolezo katika muonekano uliokuzwa wa mabadiliko, katika kiolesura cha wakala. ';
    $Self->{Translation}->{'Shows a link in the menu that allows defining a workorder as a template in the zoom view of the workorder, in the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu that allows editing the report of a workorder, in the zoom view of the workorder of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu that allows linking a change with another object in the change zoom view of the agent interface.'} =
        'Inaonyesha kiungo kwenye menyu  kinachoruhusu kuunganisha mabadiliko na kitu kingine katika muonekano uliokuzwa kiolesura cha wakala.';
    $Self->{Translation}->{'Shows a link in the menu that allows linking a workorder with another object in the zoom view of the workorder of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu that allows moving the time slot of a change in its zoom view of the agent interface.'} =
        'Inaonyesha kiungo kwenye menyu  kinachoruhusu kuhamisha kipengele cha muda wa mabadiliko katika muonekano uliokuzwa wa kiolesura cha wakala.';
    $Self->{Translation}->{'Shows a link in the menu that allows taking a workorder in the its zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to access the conditions of a change in the its zoom view of the agent interface.'} =
        'Inaonyesha kiungo kwenye menyu ili kufikia masharti ya mabadiliko katika muonekano wake uliokuzwa wa kiolesura cha wakala. ';
    $Self->{Translation}->{'Shows a link in the menu to access the history of a change in the its zoom view of the agent interface.'} =
        'Inaonyesha kiungo kwenye menyu ili kufikia masharti ya historia ya mabadiliko katika muonekano wake uliokuzwa wa kiolesura cha wakala. ';
    $Self->{Translation}->{'Shows a link in the menu to access the history of a workorder in the its zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to add a workorder in the change zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to delete a change in its zoom view of the agent interface.'} =
        'Inaonyesha kiungo kwenye menyu ili kufuta mabadiliko katika muonekano wake uliokuzwa wa kiolesura cha wakala. ';
    $Self->{Translation}->{'Shows a link in the menu to delete a workorder in its zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to edit a change in the its zoom view of the agent interface.'} =
        'Inaonyesha kiungo kwenye menyu ili kuhariri mabadiliko katika muonekano wake uliokuzwa wa kiolesura cha wakala. ';
    $Self->{Translation}->{'Shows a link in the menu to edit a workorder in the its zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to go back in the change zoom view of the agent interface.'} =
        'Inaonyesha kiungo kwenye menyu ili kurudi nyuma kwenye muonekano wa mabadiliko uliokuzwa wa kiolesura cha wakala. ';
    $Self->{Translation}->{'Shows a link in the menu to go back in the workorder zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to print a change in the its zoom view of the agent interface.'} =
        'Inaonyesha kiungo kwenye menyu ili kuchapisha mabadiliko kwenye muonekano wake uliokuzwa wa kiolesura cha wakala. ';
    $Self->{Translation}->{'Shows a link in the menu to print a workorder in the its zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to reset a change and its workorders in its zoom view of the agent interface.'} =
        'Inaonyesha kiungo kwenye menyu ili kweka upya mabadiliko na oda zake za kazi katika muonekano wake uliokuzwa wa kiolesura cha wakala. ';
    $Self->{Translation}->{'Shows a link in the menu to show the involved persons in a change, in the zoom view of the change in the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows the change history (reverse ordered) in the agent interface.'} =
        'Inaonyesha badili historia (utaratibu uliogeuzwa) katika kiolesura cha wakala.';
    $Self->{Translation}->{'State Machine'} = 'Mashine ya Hali';
    $Self->{Translation}->{'Stores change and workorder ids and their corresponding template id, while a user is editing a template.'} =
        'Inahifadhi vitambulisho vya mabadiliko na oda za kazi sambamba na kitambulisho cha kiolezo, wakati mtumiaji anahariri kiolezo.';
    $Self->{Translation}->{'Take Workorder'} = 'Chukua Oda ya kazi';
    $Self->{Translation}->{'Take Workorder.'} = '';
    $Self->{Translation}->{'Take the workorder.'} = '';
    $Self->{Translation}->{'Template Overview'} = 'Mapitio ya Kiolezo';
    $Self->{Translation}->{'Template type'} = '';
    $Self->{Translation}->{'Template.'} = '';
    $Self->{Translation}->{'The identifier for a change, e.g. Change#, MyChange#. The default is Change#.'} =
        'Kitambulisho cha mabadiliko, mf. Mabadiliko#, MabadilikoYangu#. Chaguo-msingi ni Mabadiliko#.';
    $Self->{Translation}->{'The identifier for a workorder, e.g. Workorder#, MyWorkorder#. The default is Workorder#.'} =
        'Kitambulisho cha oda ya kazi, mf. OdaYakazi#, OdaYanguYaKazi#. Chaguo-msingi ni OdaYakazi#.';
    $Self->{Translation}->{'This ACL module restricts the usuage of the ticket types that are defined in the sysconfig option \'ITSMChange::AddChangeLinkTicketTypes\', to users of the groups as defined in "ITSMChange::RestrictTicketTypes::Groups". As this ACL could collide with other ACLs which are also related to the ticket type, this sysconfig option is disabled by default and should only be activated if needed.'} =
        'Aina hii ya ACL inazuia matumizi ya aina za tiketi ambazo zimefafanuliwa katika chaguo la sysconfig \'MabadilikoITSM::OngezaKiungoMabadilikoAinaTiketi\', kwa watumiaji wa makundi kama ilivyofafanuliwa kwenye "MabadilikoITSM::ZuiaAinaTiketi::Makundi". Hii ACL inaweza kuingiliana na  ACL nyingine ambazo pia zina uhusiano na aina ya tiketi, hili chaguo la sysconfig lime lemazwa kwa kawaida na linaweza kuamilishwa kama itahitajika.';
    $Self->{Translation}->{'Time Slot'} = '';
    $Self->{Translation}->{'Types of tickets, where in the ticket zoom view a link to add a change will be displayed.'} =
        'Aina za tiketi, ambazo kwenye muonekano uliokuzwa wa tiketi kiungo cha kuongeza mabadiliko kitaonyeshwa.';
    $Self->{Translation}->{'User Search'} = '';
    $Self->{Translation}->{'Workorder Add (from template).'} = '';
    $Self->{Translation}->{'Workorder Add.'} = '';
    $Self->{Translation}->{'Workorder Agent.'} = '';
    $Self->{Translation}->{'Workorder Delete.'} = '';
    $Self->{Translation}->{'Workorder Edit.'} = '';
    $Self->{Translation}->{'Workorder History Zoom.'} = '';
    $Self->{Translation}->{'Workorder History.'} = '';
    $Self->{Translation}->{'Workorder Report.'} = '';
    $Self->{Translation}->{'Workorder Zoom'} = '';
    $Self->{Translation}->{'Workorder Zoom.'} = '';
    $Self->{Translation}->{'once'} = '';
    $Self->{Translation}->{'regularly'} = '';


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
