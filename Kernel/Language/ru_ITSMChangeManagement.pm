# --
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::ru_ITSMChangeManagement;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # TT Template: Kernel/Output/HTML/Templates/Standard/AdminITSMChangeCIPAllocate.tt
    $Self->{Translation}->{'Manage the priority result of combinating Category ↔ Impact.'} =
        'Управление приоритетом на основе комбинации Категория ↔ Влияние.';
    $Self->{Translation}->{'Category ↔ Impact ↔ Priority'} = 'Категория ↔ Влияние ↔ Приоритет';
    $Self->{Translation}->{'Priority allocation'} = 'Назначение приоритета';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AdminITSMChangeNotification.tt
    $Self->{Translation}->{'Add Notification Rule'} = 'Добавить правило уведомления';
    $Self->{Translation}->{'Filter for notification rules'} = '';
    $Self->{Translation}->{'ITSM ChangeManagement Notification Management'} = 'Управление уведомлениями в ITSM ChangeManagement';
    $Self->{Translation}->{'Edit Notification Rule'} = '';
    $Self->{Translation}->{'A notification should have a name!'} = 'Уведомление должно иметь имя!';
    $Self->{Translation}->{'Name is required.'} = 'Требуется имя.';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AdminITSMStateMachine.tt
    $Self->{Translation}->{'Select a catalog class!'} = 'Выберите класс каталога!';
    $Self->{Translation}->{'A catalog class is required!'} = 'Класс каталога обязателен!';
    $Self->{Translation}->{'Add a state transition'} = 'Добавить состояние перехода';
    $Self->{Translation}->{'Admin State Machine'} = 'Управление Машиной состояний';
    $Self->{Translation}->{'Catalog Class'} = 'Класс каталога';
    $Self->{Translation}->{'Object Name'} = 'Имя объекта';
    $Self->{Translation}->{'Overview over state transitions for'} = 'Обзор состояний перехода для';
    $Self->{Translation}->{'Delete this state transition'} = 'Удалить это состояние перехода';
    $Self->{Translation}->{'Add a new state transition for'} = 'Добавить новое состояние перехода для';
    $Self->{Translation}->{'Please select a state!'} = 'Выберите состояние!';
    $Self->{Translation}->{'Please select a next state!'} = 'Выберите следующее состояние!';
    $Self->{Translation}->{'Edit a state transition for'} = 'Редактировать состояние перехода для';
    $Self->{Translation}->{'Do you really want to delete the state transition'} = 'Вы действительно хототе удалить состояние перехода';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeAdd.tt
    $Self->{Translation}->{'Add Change'} = 'Добавить изменение';
    $Self->{Translation}->{'Justification'} = 'Обоснование';
    $Self->{Translation}->{'Input invalid.'} = 'Неверные данные.';
    $Self->{Translation}->{'Requested Date'} = 'Запрошенное время';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeAddFromTemplate.tt
    $Self->{Translation}->{'Select Change Template'} = 'Выбрать шаблон для изменения';
    $Self->{Translation}->{'Time type'} = 'Тип времени';
    $Self->{Translation}->{'Invalid time type.'} = 'неверный тип времени.';
    $Self->{Translation}->{'New time'} = 'новое время';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeCABTemplate.tt
    $Self->{Translation}->{'Save Change CAB as template'} = 'Сохратиь состав CAB как шаблон';
    $Self->{Translation}->{'go to involved persons screen'} = 'перейти к экрану вовлеченных специалистов';
    $Self->{Translation}->{'Invalid Name'} = 'Неверное имя';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeCondition.tt
    $Self->{Translation}->{'Conditions and Actions'} = 'Условия и Действия';
    $Self->{Translation}->{'Delete Condition'} = 'Удалить условие';
    $Self->{Translation}->{'Add new condition'} = 'Добавить новое условие';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeConditionEdit.tt
    $Self->{Translation}->{'Edit Condition'} = 'Редактировать состояние';
    $Self->{Translation}->{'Need a valid name.'} = 'Требуется правильное имя.';
    $Self->{Translation}->{'A valid name is needed.'} = 'Требуется правильное имя.';
    $Self->{Translation}->{'Duplicate name:'} = 'Уже используемое имя:';
    $Self->{Translation}->{'This name is already used by another condition.'} = 'Это имя уже сипользуется в другом условии.';
    $Self->{Translation}->{'Matching'} = 'Сопоставление';
    $Self->{Translation}->{'Any expression (OR)'} = 'Любое выражение (OR)';
    $Self->{Translation}->{'All expressions (AND)'} = 'Все выражения (AND)';
    $Self->{Translation}->{'Expressions'} = 'Выражения';
    $Self->{Translation}->{'Selector'} = 'Переключатель';
    $Self->{Translation}->{'Operator'} = 'Оператор';
    $Self->{Translation}->{'Delete Expression'} = 'Удалить выражение';
    $Self->{Translation}->{'No Expressions found.'} = 'Выражение не задано.';
    $Self->{Translation}->{'Add new expression'} = 'Добавитьновое выражение';
    $Self->{Translation}->{'Delete Action'} = 'Удалить действие';
    $Self->{Translation}->{'No Actions found.'} = 'Действий не задано.';
    $Self->{Translation}->{'Add new action'} = 'Добавить новое действие';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeDelete.tt
    $Self->{Translation}->{'Do you really want to delete this change?'} = 'Вы действительно желаете удалить это изменение?';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeEdit.tt
    $Self->{Translation}->{'Edit %s%s'} = 'Редактировать %s%s';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeHistory.tt
    $Self->{Translation}->{'History of %s%s'} = 'История для %s%s';
    $Self->{Translation}->{'Workorder'} = 'Задача';
    $Self->{Translation}->{'Createtime'} = 'Время создания';
    $Self->{Translation}->{'Show details'} = 'Показать подробно';
    $Self->{Translation}->{'Show workorder'} = 'Показать задачу';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeHistoryZoom.tt
    $Self->{Translation}->{'Detailed history information of %s'} = 'Подробная информация об истории %s';
    $Self->{Translation}->{'Modified'} = 'Изменено';
    $Self->{Translation}->{'Old Value'} = 'Старое значение';
    $Self->{Translation}->{'New Value'} = 'Новое значение';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeInvolvedPersons.tt
    $Self->{Translation}->{'Edit Involved Persons of %s%s'} = 'Изменить вовлеченных лиц %s%s';
    $Self->{Translation}->{'Involved Persons'} = 'Вовлеченные сотрудники';
    $Self->{Translation}->{'ChangeManager'} = 'Менеджер изменений';
    $Self->{Translation}->{'User invalid.'} = 'Неверный исполнитель.';
    $Self->{Translation}->{'ChangeBuilder'} = 'Составитель изменения';
    $Self->{Translation}->{'Change Advisory Board'} = 'CAB - Комитет по изменения';
    $Self->{Translation}->{'CAB Template'} = 'Шаблон для CAB';
    $Self->{Translation}->{'Apply Template'} = 'Применить шаблон';
    $Self->{Translation}->{'NewTemplate'} = 'Новый шаблон';
    $Self->{Translation}->{'Save this CAB as template'} = 'Сохранить состав CAB как шаблон';
    $Self->{Translation}->{'Add to CAB'} = 'Добавить к CAB';
    $Self->{Translation}->{'Invalid User'} = 'Неверный сотрудник';
    $Self->{Translation}->{'Current CAB'} = 'Текущий CAB';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeOverviewNavBar.tt
    $Self->{Translation}->{'Context Settings'} = 'Параметры контекста';
    $Self->{Translation}->{'Changes per page'} = 'Изменений на страницу';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeOverviewSmall.tt
    $Self->{Translation}->{'Workorder Title'} = 'Заголовок задачи';
    $Self->{Translation}->{'Change Title'} = 'Заголовок Изменения';
    $Self->{Translation}->{'Workorder Agent'} = 'Агент по задаче';
    $Self->{Translation}->{'Change Builder'} = 'Составитель изменения';
    $Self->{Translation}->{'Change Manager'} = 'Менеджер изменения';
    $Self->{Translation}->{'Workorders'} = 'Задачи';
    $Self->{Translation}->{'Change State'} = 'Состояние Изменения';
    $Self->{Translation}->{'Workorder State'} = 'Статус задачи';
    $Self->{Translation}->{'Workorder Type'} = 'Тип задачи';
    $Self->{Translation}->{'Requested Time'} = 'Запрошенное время';
    $Self->{Translation}->{'Planned Start Time'} = 'Запланированное время начала';
    $Self->{Translation}->{'Planned End Time'} = 'Планируемое время окончания';
    $Self->{Translation}->{'Actual Start Time'} = 'Фактическое время начала';
    $Self->{Translation}->{'Actual End Time'} = 'Фактическое время окончания';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeReset.tt
    $Self->{Translation}->{'Do you really want to reset this change?'} = 'Вы действительно желаете очистить это изменение?';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeSearch.tt
    $Self->{Translation}->{'(e.g. 10*5155 or 105658*)'} = '(т.е. 10*5155 или 105658*)';
    $Self->{Translation}->{'CAB Agent'} = 'Агент, член CAB';
    $Self->{Translation}->{'e.g.'} = 'т.е.';
    $Self->{Translation}->{'CAB Customer'} = 'Клиент, член CAB';
    $Self->{Translation}->{'ITSM Change'} = 'Изменение';
    $Self->{Translation}->{'ITSM Workorder Instruction'} = 'Инструкция по задачам ITSM';
    $Self->{Translation}->{'ITSM Workorder Report'} = 'Отчет по задачам ITSM';
    $Self->{Translation}->{'ITSM Change Priority'} = 'Изменить приоритет ITSM';
    $Self->{Translation}->{'ITSM Change Impact'} = 'Изменить воздействие ITSM';
    $Self->{Translation}->{'Change Category'} = 'Изменить категорию';
    $Self->{Translation}->{'(before/after)'} = 'до/после';
    $Self->{Translation}->{'(between)'} = 'между';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeTemplate.tt
    $Self->{Translation}->{'Save Change as Template'} = 'Сохранить изменение как шаблон';
    $Self->{Translation}->{'A template should have a name!'} = 'Надо присвоить имя шаблону!';
    $Self->{Translation}->{'The template name is required.'} = 'Требуется имя шаблона.';
    $Self->{Translation}->{'Reset States'} = 'Очистить состояния';
    $Self->{Translation}->{'Overwrite original template'} = 'Перезаписать исходный шаблон';
    $Self->{Translation}->{'Delete original change'} = 'Удалить исходное изменение';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeTimeSlot.tt
    $Self->{Translation}->{'Move Time Slot'} = 'Сместить диапазон времени';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMChangeZoom.tt
    $Self->{Translation}->{'Change Information'} = 'Информация об изменении';
    $Self->{Translation}->{'Planned Effort'} = 'Планируемое усилие';
    $Self->{Translation}->{'Accounted Time'} = 'Затраченное время';
    $Self->{Translation}->{'Change Initiator(s)'} = 'Инициатор изменения';
    $Self->{Translation}->{'CAB'} = 'CAB';
    $Self->{Translation}->{'Last changed'} = 'Дата последнего изменеия';
    $Self->{Translation}->{'Last changed by'} = 'Последний изменил';
    $Self->{Translation}->{'To open links in the following description blocks, you might need to press Ctrl or Cmd or Shift key while clicking the link (depending on your browser and OS).'} =
        'Для открытия ссылки в следующем сообщении/заметке необходимо нажать и удерживать клавишу Ctrl или Cmd или Shift и кликнуть по ссылке (зависит от вашего браузера и ОС).';
    $Self->{Translation}->{'Download Attachment'} = 'Загрузить вложение';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMTemplateEditCAB.tt
    $Self->{Translation}->{'Edit CAB Template'} = 'Редактировать шаблон CAB';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMTemplateEditContent.tt
    $Self->{Translation}->{'This will create a new change from this template, so you can edit and save it.'} =
        'Будет создано новое изменение из этого шаблона и вы сможете его редактировать и сохранить.';
    $Self->{Translation}->{'The new change will be deleted automatically after it has been saved as template.'} =
        'Новое изменение будет автоматически удалено после его сохранения в качестве шаблона.';
    $Self->{Translation}->{'This will create a new workorder from this template, so you can edit and save it.'} =
        'Будет создана новая задача из этого шаблона и вы сможете его редактировать и сохранить.';
    $Self->{Translation}->{'A temporary change will be created which contains the workorder.'} =
        'Будет создано временное изменение, содержащее задачу.';
    $Self->{Translation}->{'The temporary change and new workorder will be deleted automatically after the workorder has been saved as template.'} =
        'Временное изменение и новая задача будет автоматически удалены после сохранения задачи в качестве шаблона.';
    $Self->{Translation}->{'Do you want to proceed?'} = 'Желаете продолжить?';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMTemplateOverviewSmall.tt
    $Self->{Translation}->{'Template ID'} = 'ID шаблона';
    $Self->{Translation}->{'Edit Content'} = 'Редактировать содержание';
    $Self->{Translation}->{'Create by'} = 'Создано';
    $Self->{Translation}->{'Change by'} = 'Изменено';
    $Self->{Translation}->{'Change Time'} = 'Время модификации';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderAdd.tt
    $Self->{Translation}->{'Add Workorder to %s%s'} = 'Добавить задачу к %s%s';
    $Self->{Translation}->{'Instruction'} = 'Инструкция';
    $Self->{Translation}->{'Invalid workorder type.'} = 'Неправильный тип задачи.';
    $Self->{Translation}->{'The planned start time must be before the planned end time!'} = 'Время начала должно предшествовать времени окончания!';
    $Self->{Translation}->{'Invalid format.'} = 'Неверный формат.';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderAddFromTemplate.tt
    $Self->{Translation}->{'Select Workorder Template'} = 'Выбрать шаблон для задачи';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderAgent.tt
    $Self->{Translation}->{'Edit Workorder Agent of %s%s'} = 'Редактировать агента по задаче %s%s';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderDelete.tt
    $Self->{Translation}->{'Do you really want to delete this workorder?'} = 'Вы действительно желаете удалить эту задачу?';
    $Self->{Translation}->{'You can not delete this Workorder. It is used in at least one Condition!'} =
        'Вы не можете удалить эту задачу. Она используется как минимум в одном условии!';
    $Self->{Translation}->{'This Workorder is used in the following Condition(s)'} = 'Эта задача используется в следующих условиях';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderEdit.tt
    $Self->{Translation}->{'Edit %s%s-%s'} = 'Редактировать %s%s-%s';
    $Self->{Translation}->{'Move following workorders accordingly'} = 'Переместить/сдвинуть следующие задачи соответственно';
    $Self->{Translation}->{'If the planned end time of this workorder is changed, the planned start times of all following workorders will be changed accordingly'} =
        'Если запланированное время окончания задачи будет изменено, запланированное время начала всех последующих задач будет соответственно изменено';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderHistory.tt
    $Self->{Translation}->{'History of %s%s-%s'} = 'История %s%s-%s';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderReport.tt
    $Self->{Translation}->{'Edit Report of %s%s-%s'} = 'Редактировать отчет %s%s-%s';
    $Self->{Translation}->{'Report'} = 'Отчет';
    $Self->{Translation}->{'The actual start time must be before the actual end time!'} = 'Время начала должно предшествовать времени окончания!';
    $Self->{Translation}->{'The actual start time must be set, when the actual end time is set!'} =
        'Фактическое время начала должно быть задано, если задано время фактического окончания!';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderTake.tt
    $Self->{Translation}->{'Current Agent'} = 'Текущий агент';
    $Self->{Translation}->{'Do you really want to take this workorder?'} = 'Вы действительно хотите взять эту задачу?';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderTemplate.tt
    $Self->{Translation}->{'Save Workorder as Template'} = 'Сохранить задачу как шаблон';
    $Self->{Translation}->{'Delete original workorder (and surrounding change)'} = 'Удалить исходную задачу (и окружающее изменение)';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AgentITSMWorkOrderZoom.tt
    $Self->{Translation}->{'Workorder Information'} = 'Информация о задаче';

    # Perl Module: Kernel/Modules/AdminITSMChangeNotification.pm
    $Self->{Translation}->{'Notification Added!'} = 'Уведомление добавлено!';
    $Self->{Translation}->{'Unknown notification %s!'} = 'Неизвестное уведомление %s!';
    $Self->{Translation}->{'There was an error creating the notification.'} = 'Произошла ошибка при создании уведомления.';

    # Perl Module: Kernel/Modules/AdminITSMStateMachine.pm
    $Self->{Translation}->{'State Transition Updated!'} = 'Переход состояния обновлен!';
    $Self->{Translation}->{'State Transition Added!'} = 'Добавлен переход состояния!';

    # Perl Module: Kernel/Modules/AgentITSMChange.pm
    $Self->{Translation}->{'ITSM Changes'} = 'Изменения';

    # Perl Module: Kernel/Modules/AgentITSMChangeAdd.pm
    $Self->{Translation}->{'Ticket with TicketID %s does not exist!'} = 'Заявка с таким TicketID %s не существует!';
    $Self->{Translation}->{'Missing sysconfig option "ITSMChange::AddChangeLinkTicketTypes"!'} =
        'Пропущен параметр конфигурации "ITSMChange::AddChangeLinkTicketTypes"!';
    $Self->{Translation}->{'Was not able to add change!'} = 'Не удалось добавить изменение!';

    # Perl Module: Kernel/Modules/AgentITSMChangeAddFromTemplate.pm
    $Self->{Translation}->{'Was not able to create change from template!'} = 'Не удалось создать изменение из шаблона!';

    # Perl Module: Kernel/Modules/AgentITSMChangeCABTemplate.pm
    $Self->{Translation}->{'No ChangeID is given!'} = 'ChangeID не задан!';
    $Self->{Translation}->{'No change found for changeID %s.'} = 'Не найдено изменений для ChangeID %s.';
    $Self->{Translation}->{'The CAB of change "%s" could not be serialized.'} = 'CAB Изменения "%s" не может быть размножено.';
    $Self->{Translation}->{'Could not add the template.'} = 'Не удалось добавить шаблон.';

    # Perl Module: Kernel/Modules/AgentITSMChangeCondition.pm
    $Self->{Translation}->{'Change "%s" not found in database!'} = 'Изменение "%s" не найдено в БД!';
    $Self->{Translation}->{'Could not delete ConditionID %s!'} = 'Невозможно удалить ConditionID %s!';

    # Perl Module: Kernel/Modules/AgentITSMChangeConditionEdit.pm
    $Self->{Translation}->{'No %s is given!'} = '%s не задан!';
    $Self->{Translation}->{'Could not create new condition!'} = 'Не удалось создать новое условие!';
    $Self->{Translation}->{'Could not update ConditionID %s!'} = 'Не удалось обновить ConditionID %s!';
    $Self->{Translation}->{'Could not update ExpressionID %s!'} = 'Не удалось обновить ExpressionID %s!';
    $Self->{Translation}->{'Could not add new Expression!'} = 'Не удалось создать новое Выражение!';
    $Self->{Translation}->{'Could not update ActionID %s!'} = 'Не удалось обновить ActionID %s!';
    $Self->{Translation}->{'Could not add new Action!'} = 'Не удалось добавить новое Действие!';
    $Self->{Translation}->{'Could not delete ExpressionID %s!'} = 'Не удалось удалить ExpressionID %s!';
    $Self->{Translation}->{'Could not delete ActionID %s!'} = 'Невозможно удалить ActionID %s!';
    $Self->{Translation}->{'Error: Unknown field type "%s"!'} = 'Ошибка: Неизвестный тип поля "%s"!';
    $Self->{Translation}->{'ConditionID %s does not belong to the given ChangeID %s!'} = 'ConditionID %s не принадлежит заданному ChangeID %s!';

    # Perl Module: Kernel/Modules/AgentITSMChangeDelete.pm
    $Self->{Translation}->{'Change "%s" does not have an allowed change state to be deleted!'} =
        'Изменение "%s" не содержит разрешенных для удаления состояний!';
    $Self->{Translation}->{'Was not able to delete the changeID %s!'} = 'Не удалось удалить ChangeID %s!';

    # Perl Module: Kernel/Modules/AgentITSMChangeEdit.pm
    $Self->{Translation}->{'Was not able to update Change!'} = 'Не удалось обновить Изменение!';

    # Perl Module: Kernel/Modules/AgentITSMChangeHistory.pm
    $Self->{Translation}->{'Can\'t show history, as no ChangeID is given!'} = 'Невозможно отобразить историю, так как не задан ChangeID!';
    $Self->{Translation}->{'Change "%s" not found in the database!'} = 'Изменение "%s" не найдено в БД!';
    $Self->{Translation}->{'Unknown type "%s" encountered!'} = 'Обнаружен неизвестный тип "% s"!';
    $Self->{Translation}->{'Change History'} = 'История Изменений';

    # Perl Module: Kernel/Modules/AgentITSMChangeHistoryZoom.pm
    $Self->{Translation}->{'Can\'t show history zoom, no HistoryEntryID is given!'} = 'Невозможно отобразить историю, не задан HistoryEntryID!';
    $Self->{Translation}->{'HistoryEntry "%s" not found in database!'} = 'HistoryEntry "%s" не найдено в БД!';

    # Perl Module: Kernel/Modules/AgentITSMChangeInvolvedPersons.pm
    $Self->{Translation}->{'Was not able to update Change CAB for Change %s!'} = 'Не удалось обновить CAB Изменения для Изменения %s!';
    $Self->{Translation}->{'Was not able to update Change %s!'} = 'Не удалось обновить Изменение %s!';

    # Perl Module: Kernel/Modules/AgentITSMChangeMyCAB.pm
    $Self->{Translation}->{'My CAB'} = '';

    # Perl Module: Kernel/Modules/AgentITSMChangeMyChanges.pm
    $Self->{Translation}->{'My Changes'} = 'Мои изменения';

    # Perl Module: Kernel/Modules/AgentITSMChangeMyWorkOrders.pm
    $Self->{Translation}->{'My Workorders'} = '';

    # Perl Module: Kernel/Modules/AgentITSMChangePIR.pm
    $Self->{Translation}->{'PIR'} = 'PIR';

    # Perl Module: Kernel/Modules/AgentITSMChangePSA.pm
    $Self->{Translation}->{'PSA'} = 'PSA';

    # Perl Module: Kernel/Modules/AgentITSMChangePrint.pm
    $Self->{Translation}->{'WorkOrder "%s" not found in database!'} = 'Задача "%s" не найдена в БД!';
    $Self->{Translation}->{'Can\'t create output, as the workorder is not attached to a change!'} =
        'Невозможно создать результат, так как Задача не прикреплена к Изменению!';
    $Self->{Translation}->{'Can\'t create output, as no ChangeID is given!'} = 'Невозможно создать результат, так как не задан ChangeID!';
    $Self->{Translation}->{'unknown change title'} = 'Неизвестный заголовок Изменения';
    $Self->{Translation}->{'ITSM Workorder'} = 'Задача';
    $Self->{Translation}->{'WorkOrderNumber'} = 'WorkOrderNumber - Номер задачи';
    $Self->{Translation}->{'WorkOrderTitle'} = 'WorkOrderTitle - Заголовок Задачи';
    $Self->{Translation}->{'unknown workorder title'} = 'Неизвестный заголовок Задачи';
    $Self->{Translation}->{'ChangeState'} = 'Состояние изменения';
    $Self->{Translation}->{'PlannedEffort'} = 'Планируемые усилия';
    $Self->{Translation}->{'CAB Agents'} = '';
    $Self->{Translation}->{'CAB Customers'} = '';
    $Self->{Translation}->{'RequestedTime'} = 'RequestedTime';
    $Self->{Translation}->{'PlannedStartTime'} = 'Запланированное время начала';
    $Self->{Translation}->{'PlannedEndTime'} = 'Запланированное время окончания';
    $Self->{Translation}->{'ActualStartTime'} = 'Фактическое время начала';
    $Self->{Translation}->{'ActualEndTime'} = 'Фактическое время окончания';
    $Self->{Translation}->{'ChangeTime'} = 'ChangeTime - Время изменения';
    $Self->{Translation}->{'ChangeNumber'} = 'Номер изменения';
    $Self->{Translation}->{'WorkOrderState'} = 'WorkOrderState - состояние Задачи';
    $Self->{Translation}->{'WorkOrderType'} = 'WorkOrderType - Тип Задачи';
    $Self->{Translation}->{'WorkOrderAgent'} = 'WorkOrderAgent - Агент для задачи';
    $Self->{Translation}->{'ITSM Workorder Overview (%s)'} = 'Обзор Задач ITSM (%s)';

    # Perl Module: Kernel/Modules/AgentITSMChangeReset.pm
    $Self->{Translation}->{'Was not able to reset WorkOrder %s of Change %s!'} = 'Не удалось очистить Задачу %s Изменения %s!';
    $Self->{Translation}->{'Was not able to reset Change %s!'} = 'Не удалось очистить Изменение %s!';

    # Perl Module: Kernel/Modules/AgentITSMChangeSchedule.pm
    $Self->{Translation}->{'Change Schedule'} = 'Расписание изменений';

    # Perl Module: Kernel/Modules/AgentITSMChangeSearch.pm
    $Self->{Translation}->{'Change Search'} = 'Поиск Изменений';
    $Self->{Translation}->{'ChangeTitle'} = 'Заголовок изменения';
    $Self->{Translation}->{'WorkOrders'} = 'Задачи';
    $Self->{Translation}->{'Change Search Result'} = 'Результат поиска Изменений';
    $Self->{Translation}->{'Change Number'} = 'Номер Изменения';
    $Self->{Translation}->{'Work Order Title'} = 'Заголовок Задачи';
    $Self->{Translation}->{'Change Description'} = 'Описание Изменения';
    $Self->{Translation}->{'Change Justification'} = 'Обоснование Изменения';
    $Self->{Translation}->{'WorkOrder Instruction'} = 'Инструкции по Задаче';
    $Self->{Translation}->{'WorkOrder Report'} = 'Отчет по Задаче';
    $Self->{Translation}->{'Change Priority'} = 'Приоритет Изменения';
    $Self->{Translation}->{'Change Impact'} = 'Влияние Изменения';
    $Self->{Translation}->{'Created By'} = 'Создал';
    $Self->{Translation}->{'WorkOrder State'} = 'Состояние Задачи';
    $Self->{Translation}->{'WorkOrder Type'} = 'Тип Задачи';
    $Self->{Translation}->{'WorkOrder Agent'} = 'Агент Задачи';
    $Self->{Translation}->{'before'} = 'до';

    # Perl Module: Kernel/Modules/AgentITSMChangeTemplate.pm
    $Self->{Translation}->{'The change "%s" could not be serialized.'} = 'Изменение "%s" не может быть размножено.';
    $Self->{Translation}->{'Could not update the template "%s".'} = 'Не удалось обновить шаблон "%s".';
    $Self->{Translation}->{'Could not delete change "%s".'} = 'Невозможно удалить Изменение "%s".';

    # Perl Module: Kernel/Modules/AgentITSMChangeTimeSlot.pm
    $Self->{Translation}->{'The change can\'t be moved, as it has no workorders.'} = 'Изменение не может быть перемещено так как не имеет Задач.';
    $Self->{Translation}->{'Add a workorder first.'} = 'Сначала добавьте Задачу.';
    $Self->{Translation}->{'Can\'t move a change which already has started!'} = 'Невозможно переместить Изменение, работа по которому уже начата!';
    $Self->{Translation}->{'Please move the individual workorders instead.'} = 'Вместо этого переместите отдельные задачи.';
    $Self->{Translation}->{'The current %s could not be determined.'} = 'Текущий %s не может быть определен.';
    $Self->{Translation}->{'The %s of all workorders has to be defined.'} = '%s всех Задач должны быть заданы.';
    $Self->{Translation}->{'Was not able to move time slot for workorder #%s!'} = 'Не удалось переместить временНой слот для Задачи #%s!';

    # Perl Module: Kernel/Modules/AgentITSMTemplateDelete.pm
    $Self->{Translation}->{'You need %s permission!'} = 'Вам необходимо иметь право %s!';
    $Self->{Translation}->{'No TemplateID is given!'} = 'Не задан TemplateID!';
    $Self->{Translation}->{'Template "%s" not found in database!'} = 'Шаблон "%s" не найден в БД!';
    $Self->{Translation}->{'Was not able to delete the template %s!'} = 'Не удалось удалить шаблон %s!';

    # Perl Module: Kernel/Modules/AgentITSMTemplateEdit.pm
    $Self->{Translation}->{'Was not able to update Template %s!'} = 'Не удалось обновить шаблон %s!';

    # Perl Module: Kernel/Modules/AgentITSMTemplateEditCAB.pm
    $Self->{Translation}->{'Was not able to update Template "%s"!'} = 'Не удалось обновить шаблон "%s"!';

    # Perl Module: Kernel/Modules/AgentITSMTemplateEditContent.pm
    $Self->{Translation}->{'Was not able to create change!'} = 'Не удалось создать изменение!';
    $Self->{Translation}->{'Was not able to create workorder from template!'} = 'Не удалось создать Задачу из шаблона!';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderAdd.pm
    $Self->{Translation}->{'You need %s permissions on the change!'} = 'Вам необходимы права %s на Изменение!';
    $Self->{Translation}->{'Was not able to add workorder!'} = 'Не удалось добавить Задачу!';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderAgent.pm
    $Self->{Translation}->{'No WorkOrderID is given!'} = 'WorkOrderID не задан!';
    $Self->{Translation}->{'Was not able to set the workorder agent of the workorder "%s" to empty!'} =
        'Не удалось сбросить агента для Задачи "%s"!';
    $Self->{Translation}->{'Was not able to update the workorder "%s"!'} = 'Не удалось обновить Задачу %s!';
    $Self->{Translation}->{'Could not find Change for WorkOrder %s!'} = 'Не удалось найти Изменение для Задачи %s!';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderDelete.pm
    $Self->{Translation}->{'Was not able to delete the workorder %s!'} = 'Не удалось удалить Задачу %s!';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderEdit.pm
    $Self->{Translation}->{'Was not able to update WorkOrder %s!'} = 'Не удалось обновить Задачу %s!';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderHistory.pm
    $Self->{Translation}->{'Can\'t show history, as no WorkOrderID is given!'} = 'Невозможно отобразить историю, так как не задан WorkOrderID!';
    $Self->{Translation}->{'WorkOrder "%s" not found in the database!'} = 'Задача "%s" не найдена в БД!';
    $Self->{Translation}->{'WorkOrder History'} = 'История Задачи';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderHistoryZoom.pm
    $Self->{Translation}->{'History entry "%s" not found in the database!'} = 'Запись Истории "%s" не найдена в БД!';
    $Self->{Translation}->{'WorkOrder History Zoom'} = 'История Задачи подробно';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderTake.pm
    $Self->{Translation}->{'Was not able to take the workorder %s!'} = 'Не удалось получить Задачу %s!';

    # Perl Module: Kernel/Modules/AgentITSMWorkOrderTemplate.pm
    $Self->{Translation}->{'The workorder "%s" could not be serialized.'} = 'Задача "%s" не может быть размножена.';

    # Perl Module: Kernel/Output/HTML/Layout/ITSMChange.pm
    $Self->{Translation}->{'Need config option %s!'} = 'Необходима настройка конфигурации %s!';
    $Self->{Translation}->{'Config option %s needs to be a HASH ref!'} = 'Опция %s должна быть хеш-ссылкой!';
    $Self->{Translation}->{'No config option found for the view "%s"!'} = 'Не настроен обзор "%s"!';
    $Self->{Translation}->{'Title: %s | Type: %s'} = 'Заголовок: %s | Тип: %s';

    # Perl Module: Kernel/Output/HTML/ToolBar/MyCAB.pm
    $Self->{Translation}->{'My CABs'} = 'Мои CAB';

    # Perl Module: Kernel/Output/HTML/ToolBar/MyWorkOrders.pm
    $Self->{Translation}->{'My Work Orders'} = 'Мои Задачи';

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
    $Self->{Translation}->{'all'} = 'все';
    $Self->{Translation}->{'any'} = 'любой(ая)';

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
    $Self->{Translation}->{'requested'} = 'запрошено';
    $Self->{Translation}->{'pending approval'} = 'отложенное утверждение';
    $Self->{Translation}->{'rejected'} = 'отвергнуто';
    $Self->{Translation}->{'approved'} = 'Утверждено';
    $Self->{Translation}->{'in progress'} = 'в работе';
    $Self->{Translation}->{'pending pir'} = 'ожидает одобрения PIR';
    $Self->{Translation}->{'successful'} = 'успешно';
    $Self->{Translation}->{'failed'} = 'не удалось';
    $Self->{Translation}->{'canceled'} = 'отменено';
    $Self->{Translation}->{'retracted'} = 'отказано';
    $Self->{Translation}->{'created'} = 'создано(а)';
    $Self->{Translation}->{'accepted'} = 'Принято';
    $Self->{Translation}->{'ready'} = 'готово';
    $Self->{Translation}->{'approval'} = 'Утверждение';
    $Self->{Translation}->{'workorder'} = 'Задача';
    $Self->{Translation}->{'backout'} = 'План отката';
    $Self->{Translation}->{'decision'} = 'решение';
    $Self->{Translation}->{'pir'} = 'PIR (Post Implementation Review/анализ по окончании)';
    $Self->{Translation}->{'ChangeStateID'} = '';
    $Self->{Translation}->{'CategoryID'} = '';
    $Self->{Translation}->{'ImpactID'} = '';
    $Self->{Translation}->{'PriorityID'} = '';
    $Self->{Translation}->{'ChangeManagerID'} = '';
    $Self->{Translation}->{'ChangeBuilderID'} = '';
    $Self->{Translation}->{'WorkOrderStateID'} = '';
    $Self->{Translation}->{'WorkOrderTypeID'} = '';
    $Self->{Translation}->{'WorkOrderAgentID'} = '';
    $Self->{Translation}->{'is'} = 'Является';
    $Self->{Translation}->{'is not'} = 'не';
    $Self->{Translation}->{'is empty'} = 'пусто';
    $Self->{Translation}->{'is not empty'} = 'не пусто';
    $Self->{Translation}->{'is greater than'} = 'больше чем';
    $Self->{Translation}->{'is less than'} = 'меньше чем';
    $Self->{Translation}->{'is before'} = 'до';
    $Self->{Translation}->{'is after'} = 'после';
    $Self->{Translation}->{'contains'} = 'содержит';
    $Self->{Translation}->{'not contains'} = 'не содержит';
    $Self->{Translation}->{'begins with'} = 'начать с';
    $Self->{Translation}->{'ends with'} = 'окончить с';
    $Self->{Translation}->{'set'} = 'установлено';

    # JS File: var/httpd/htdocs/js/ITSM.Admin.ChangeManagement.ChangeNotification.js
    $Self->{Translation}->{'Delete Notification'} = '';

    # JS File: var/httpd/htdocs/js/ITSM.Agent.ChangeManagement.Condition.js
    $Self->{Translation}->{'Do you really want to delete this expression?'} = '';
    $Self->{Translation}->{'Do you really want to delete this action?'} = '';
    $Self->{Translation}->{'Do you really want to delete this condition?'} = '';

    # JS File: var/httpd/htdocs/js/ITSM.Agent.ChangeManagement.ConfirmDialog.js
    $Self->{Translation}->{'Ok'} = 'О.К.';

    # SysConfig
    $Self->{Translation}->{'A list of the agents who have permission to take workorders. Key is a login name. Content is 0 or 1.'} =
        'Список агентов, имеющих права взять задачу в работу. Ключ - логин, Содержание - 0 или 1.';
    $Self->{Translation}->{'A list of workorder states, at which the ActualStartTime of a workorder will be set if it was empty at this point.'} =
        'Список состояний задачи в которых фактическое время начала задачи может быть задано, если еще пусто к этому моменту.';
    $Self->{Translation}->{'Actual end time'} = '';
    $Self->{Translation}->{'Actual start time'} = '';
    $Self->{Translation}->{'Add Workorder'} = 'Добавить задачу';
    $Self->{Translation}->{'Add Workorder (from Template)'} = 'Добавить задачу (из шаблона)';
    $Self->{Translation}->{'Add a change from template.'} = 'Добавить Изменение из шаблона.';
    $Self->{Translation}->{'Add a change.'} = 'Добавить изменения';
    $Self->{Translation}->{'Add a workorder (from template) to the change.'} = 'Добавить задачу (из шаблона) на изменение';
    $Self->{Translation}->{'Add a workorder to the change.'} = 'Добавить задачу на изменение';
    $Self->{Translation}->{'Add from template'} = 'Добавить, используя шаблон';
    $Self->{Translation}->{'Admin of the CIP matrix.'} = 'Управление матрицей CIP';
    $Self->{Translation}->{'Admin of the state machine.'} = 'Управление машиной состояний';
    $Self->{Translation}->{'Agent interface notification module to see the number of change advisory boards.'} =
        'Модуль отображающий количество CAB в интерфейсе агента.';
    $Self->{Translation}->{'Agent interface notification module to see the number of changes managed by the user.'} =
        'Модуль отображающий количество изменений с которыми работает агент';
    $Self->{Translation}->{'Agent interface notification module to see the number of changes.'} =
        'Модуль отображающий количество изменений';
    $Self->{Translation}->{'Agent interface notification module to see the number of workorders.'} =
        'Модуль уведомлений для интерфейса агента для получения количества Задач.';
    $Self->{Translation}->{'CAB Member Search'} = 'Поиск членов CAB';
    $Self->{Translation}->{'Cache time in minutes for the change management toolbars. Default: 3 hours (180 minutes).'} =
        'Время кэширования в минутах для панели управления изменениями. По умолчанию: 3 часа (180 минут).';
    $Self->{Translation}->{'Cache time in minutes for the change management. Default: 5 days (7200 minutes).'} =
        'Время кэширования в минутах для управлени изменениями. По умолчанию: 5 дней (7200 минут).';
    $Self->{Translation}->{'Change CAB Templates'} = 'Шаблон для CAB Изменения';
    $Self->{Translation}->{'Change History.'} = 'История изменений.';
    $Self->{Translation}->{'Change Involved Persons.'} = 'Список вовлеченных участников Изменения.';
    $Self->{Translation}->{'Change Overview "Small" Limit'} = 'Изменить количество строк/записей при просмотре изменений в формате Small.';
    $Self->{Translation}->{'Change Overview.'} = 'Обзор Изменения';
    $Self->{Translation}->{'Change Print.'} = 'Печать Изменения.';
    $Self->{Translation}->{'Change Schedule.'} = 'Изменение расписания.';
    $Self->{Translation}->{'Change Settings'} = '';
    $Self->{Translation}->{'Change Zoom'} = 'Подробный просмотр изменения';
    $Self->{Translation}->{'Change Zoom.'} = 'Подробный просмотр Изменения.';
    $Self->{Translation}->{'Change and Workorder Templates'} = 'Шаблоны изменений и задач';
    $Self->{Translation}->{'Change and workorder templates edited by this user.'} = 'Шаблоны изменений и задач, отредактированные этим пользователем';
    $Self->{Translation}->{'Change area.'} = 'Область Изменения.';
    $Self->{Translation}->{'Change involved persons of the change.'} = 'Редактировать список сотрудников, занимающихся изменением';
    $Self->{Translation}->{'Change limit per page for Change Overview "Small".'} = 'Изменить лимит на страницу для Обзора изменений ("Small")';
    $Self->{Translation}->{'Change number'} = '';
    $Self->{Translation}->{'Change search backend router of the agent interface.'} = 'Изменить источник поиска (backend) в интерфейсе агента.';
    $Self->{Translation}->{'Change state'} = '';
    $Self->{Translation}->{'Change time'} = '';
    $Self->{Translation}->{'Change title'} = '';
    $Self->{Translation}->{'Condition Edit'} = 'Редактировать условие';
    $Self->{Translation}->{'Condition Overview'} = 'Обзор Условий';
    $Self->{Translation}->{'Configure which screen should be shown after a new workorder has been created.'} =
        'Настройте, какой экран следует показывать после создания новой задачи.';
    $Self->{Translation}->{'Configures how often the notifications are sent when planned the start time or other time values have been reached/passed.'} =
        'Задает частоту отправки уведомлений, когда запланированное время начала или другие времеНные значения достигнуты/прошли.';
    $Self->{Translation}->{'Create Change'} = 'Создать изменение';
    $Self->{Translation}->{'Create Change (from Template)'} = 'Создать изменение (из шаблона)';
    $Self->{Translation}->{'Create a change (from template) from this ticket.'} = 'Создать изменение (из шаблона) из этой заявки';
    $Self->{Translation}->{'Create a change from this ticket.'} = 'Создать изменение из этой заявки';
    $Self->{Translation}->{'Create and manage ITSM Change Management notifications.'} = 'Создание и управление уведомлениями в ITSM Управление Изменениями.';
    $Self->{Translation}->{'Create and manage change notifications.'} = '';
    $Self->{Translation}->{'Default type for a workorder. This entry must exist in general catalog class \'ITSM::ChangeManagement::WorkOrder::Type\'.'} =
        'Тип задачи по умолчанию. Он должен быть описан в качестве класса в Общем каталоге в ITSM::ChangeManagement::WorkOrder::Type';
    $Self->{Translation}->{'Define Actions where a settings button is available in the linked objects widget (LinkObject::ViewMode = "complex"). Please note that these Actions must have registered the following JS and CSS files: Core.AllocationList.css, Core.UI.AllocationList.js, Core.UI.Table.Sort.js, Core.Agent.TableFilters.js and Core.Agent.LinkObject.js.'} =
        'Задает Действия/Actions когда кнопка настройки доступна в связанном виджете (LinkObject::ViewMode = "complex"). Обратите внимание, что эти Действия/Actions должны иметь зарегистрированные JS или CSS файлы: Core.AllocationList.css, Core.UI.AllocationList.js, Core.UI.Table.Sort.js, Core.Agent.TableFilters.js и Core.Agent.LinkObject.js.';
    $Self->{Translation}->{'Define the signals for each workorder state.'} = 'Задает индикаторы для каждого состояния задачи.';
    $Self->{Translation}->{'Define which columns are shown in the linked Changes widget (LinkObject::ViewMode = "complex"). Note: Only Change attributes are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.'} =
        'Определить, какие столбцы отображаются в связанном виджете Изменений (LinkObject::ViewMode = "complex"). Примечание: Только атрибуты Изменения разрешены для DefaultColumns. Возможные настройки: 0 = Отключено, 1 = Включено, 2 = Включено по умолчанию.';
    $Self->{Translation}->{'Define which columns are shown in the linked Workorder widget (LinkObject::ViewMode = "complex"). Note: Only Workorder attributes are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.'} =
        'Определить, какие столбцы отображаются в связанном виджете Задача (LinkObject::ViewMode = "complex"). Примечание: Только атрибуты Задачи разрешены для DefaultColumns. Возможные настройки: 0 = Отключено, 1 = Включено, 2 = Включено по умолчанию.';
    $Self->{Translation}->{'Defines an overview module to show the small view of a change list.'} =
        'Задает модуль просмотра для отображения списка изменений в small формате.';
    $Self->{Translation}->{'Defines an overview module to show the small view of a template list.'} =
        'Задает модуль просмотра для отображения списка задач в small формате.';
    $Self->{Translation}->{'Defines if it will be possible to print the accounted time.'} = 'Задает возможность печати затраченного времени.';
    $Self->{Translation}->{'Defines if it will be possible to print the planned effort.'} = 'Задает возможность печати планируемых затрат.';
    $Self->{Translation}->{'Defines if reachable (as defined by the state machine) change end states should be allowed if a change is in a locked state.'} =
        'Определяет, будут ли (как задано машиной состояний) конечные состояния изменения разрешены , если изменение в состоянии блокировки.';
    $Self->{Translation}->{'Defines if reachable (as defined by the state machine) workorder end states should be allowed if a workorder is in a locked state.'} =
        'Определяет, будут ли (как задано машиной состояний) конечные состояния задачи разрешены, если задача в состоянии блокировки.';
    $Self->{Translation}->{'Defines if the accounted time should be shown.'} = 'Задает возможность отображения затраченного времени.';
    $Self->{Translation}->{'Defines if the actual start and end times should be set.'} = 'Задает необходимость указания фактического времени начала и окончания.';
    $Self->{Translation}->{'Defines if the change search and the workorder search functions could use the mirror DB.'} =
        'Задает будет ли использоваться зеркальная БД для поиска изменений и задач.';
    $Self->{Translation}->{'Defines if the change state can be set in the change edit screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Defines if the planned effort should be shown.'} = 'Задает необходимость отображения планируемых затрат.';
    $Self->{Translation}->{'Defines if the requested date should be print by customer.'} = 'Задает возможность печати клиентом запрошенной даты.';
    $Self->{Translation}->{'Defines if the requested date should be searched by customer.'} =
        'Задает возможность поиска клиентом запрошенной даты.';
    $Self->{Translation}->{'Defines if the requested date should be set by customer.'} = 'Задает возможность установки клиентом запрошенной даты.';
    $Self->{Translation}->{'Defines if the requested date should be shown by customer.'} = 'Задает возможность отбражения у клиента запрошенной даты.';
    $Self->{Translation}->{'Defines if the workorder state should be shown.'} = 'Задает возможность отображения состояния задачи.';
    $Self->{Translation}->{'Defines if the workorder title should be shown.'} = 'Задает возможность отображения заголовка задачи.';
    $Self->{Translation}->{'Defines shown graph attributes.'} = 'Задает отображаемые атрибуты диаграммы.';
    $Self->{Translation}->{'Defines that only changes containing Workorders linked with services, which the customer user has permission to use will be shown. Any other changes will not be displayed.'} =
        'Задет, что только изменения содержащие задачи связанные с сервисами на которые у клиента есть права будут отображаться. Любые другие изменения не отображаются.';
    $Self->{Translation}->{'Defines the change states that will be allowed to delete.'} = 'Задает состояния изменения которые будет разрешено удалить.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the Change PSA overview.'} =
        'Задает состояния изменений используемые в фильтрах в обзоре изменений PSA.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the Change Schedule overview.'} =
        'Задает состояния изменений используемые в фильтрах в обзоре Планировщика изменений.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the MyCAB overview.'} =
        'Задает состояния изменений используемые в фильтрах в обзоре Мои CAB.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the MyChanges overview.'} =
        'Задает состояния изменений используемые в фильтрах в обзоре Мои изменения.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the change manager overview.'} =
        'Задает состояния изменений используемые в фильтрах в обзоре менеджеров изменений';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the change overview.'} =
        'Задает состояния изменений используемые в фильтрах в обзоре изменений.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the customer change schedule overview.'} =
        'Задает состояния изменений используемые в фильтрах в обзоре изменений управляемых клиентом.';
    $Self->{Translation}->{'Defines the default change title for a dummy change which is needed to edit a workorder template.'} =
        'Задает имя по умолчанию для фиктивного изменения, необходимое для редактирования шаблона задачи.';
    $Self->{Translation}->{'Defines the default sort criteria in the change PSA overview.'} =
        'Задает стандартные критерии сортировки при просмотре изменений PSA.';
    $Self->{Translation}->{'Defines the default sort criteria in the change manager overview.'} =
        'Задает стандартные критерии сортировки при просмотре изменений менеджера.';
    $Self->{Translation}->{'Defines the default sort criteria in the change overview.'} = 'Задает стандартные критерии сортировки при просмотре изменений.';
    $Self->{Translation}->{'Defines the default sort criteria in the change schedule overview.'} =
        'Задает стандартные критерии сортировки при просмотре изменений агента.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the MyCAB overview.'} =
        'Задает стандартные критерии сортировки при просмотре Моих CAB.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the MyChanges overview.'} =
        'Задает стандартные критерии сортировки при просмотре Моих изменений.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the MyWorkorders overview.'} =
        'Задает стандартные критерии сортировки при просмотре Моих задач.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the PIR overview.'} =
        'Задает стандартные критерии сортировки при просмотре изменений в состоянии PIR.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the customer change schedule overview.'} =
        'Задает стандартные критерии сортировки при просмотре изменений планируемых клиентом.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the template overview.'} =
        'Задает стандартные критерии сортировки при просмотре шаблонов изменений.';
    $Self->{Translation}->{'Defines the default sort order in the MyCAB overview.'} = 'Задает стандартный порядок сортировки для просмотра Мои CAB.';
    $Self->{Translation}->{'Defines the default sort order in the MyChanges overview.'} = 'Задает стандартный порядок сортировки для просмотра Моих изменений';
    $Self->{Translation}->{'Defines the default sort order in the MyWorkorders overview.'} =
        'Задает стандартный порядок сортировки для просмотра Моих задач.';
    $Self->{Translation}->{'Defines the default sort order in the PIR overview.'} = 'Задает стандартный порядок сортировки для просмотра изменений в состоянии PIR.';
    $Self->{Translation}->{'Defines the default sort order in the change PSA overview.'} = 'Задает стандартный порядок сортировки для просмотра PSA.';
    $Self->{Translation}->{'Defines the default sort order in the change manager overview.'} =
        'Задает стандартный порядок сортировки для просмотра изменений менеджера.';
    $Self->{Translation}->{'Defines the default sort order in the change overview.'} = 'Задает стандартный порядок сортировки для просмотра изменений.';
    $Self->{Translation}->{'Defines the default sort order in the change schedule overview.'} =
        'Задает стандартный порядок сортировки для просмотра изменений выполняемых агентом.';
    $Self->{Translation}->{'Defines the default sort order in the customer change schedule overview.'} =
        'Задает стандартный порядок сортировки для просмотра выполняемых клиентом изменений.';
    $Self->{Translation}->{'Defines the default sort order in the template overview.'} = 'Задает стандартный порядок сортировки для просмотра шаблонов изменений.';
    $Self->{Translation}->{'Defines the default value for the category of a change.'} = 'Задает стандартное значение для категории изменения.';
    $Self->{Translation}->{'Defines the default value for the impact of a change.'} = 'Задает стандартное значение для влияния (impact) изменения.';
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
        'Задает период (в годах), в котором время начала и окончания могут быть выбраны.';
    $Self->{Translation}->{'Defines the shown attributes of a workorder in the tooltip of the workorder graph in the change zoom. To show workorder dynamic fields in the tooltip, they must be specified like DynamicField_WorkOrderFieldName1, DynamicField_WorkOrderFieldName2, etc.'} =
        'Задает отображаемые атрибуты задачи в подсказке для задачи на графике при просмотре изменения. Для отображения динамических полей в подсказке, они должны быть указаны как DynamicField_WorkOrderFieldName1, DynamicField_WorkOrderFieldName2, и т.д.';
    $Self->{Translation}->{'Defines the shown columns in the Change PSA overview. This option has no effect on the position of the column.'} =
        'Задает список колонок при просмотре изменений PSA. Не влияет на порядок колонок.';
    $Self->{Translation}->{'Defines the shown columns in the Change Schedule overview. This option has no effect on the position of the column.'} =
        'Задает список колонок при просмотре Change Schedule. Не влияет на порядок колонок.';
    $Self->{Translation}->{'Defines the shown columns in the MyCAB overview. This option has no effect on the position of the column.'} =
        'Задает список колонок при просмотре MyCAB. Не влияет на порядок колонок.';
    $Self->{Translation}->{'Defines the shown columns in the MyChanges overview. This option has no effect on the position of the column.'} =
        'Задает список колонок при просмотре MyChanges. Не влияет на порядок колонок.';
    $Self->{Translation}->{'Defines the shown columns in the MyWorkorders overview. This option has no effect on the position of the column.'} =
        'Задает список колонок при просмотре MyWorkorders. Не влияет на порядок колонок.';
    $Self->{Translation}->{'Defines the shown columns in the PIR overview. This option has no effect on the position of the column.'} =
        'Задает список колонок при просмотре PIR Не влияет на порядок колонок.';
    $Self->{Translation}->{'Defines the shown columns in the change manager overview. This option has no effect on the position of the column.'} =
        'Задает список колонок при просмотре изменений менеджера. Не влияет на порядок колонок.';
    $Self->{Translation}->{'Defines the shown columns in the change overview. This option has no effect on the position of the column.'} =
        'Задает список колонок при просмотре изменений. Не влияет на порядок колонок.';
    $Self->{Translation}->{'Defines the shown columns in the change search. This option has no effect on the position of the column.'} =
        'Задает список колонок при поиске изменений. Не влияет на порядок колонок.';
    $Self->{Translation}->{'Defines the shown columns in the customer change schedule overview. This option has no effect on the position of the column.'} =
        'Задает список колонок при просмотре изменений клиента. Не влияет на порядок колонок.';
    $Self->{Translation}->{'Defines the shown columns in the template overview. This option has no effect on the position of the column.'} =
        'Задает список колонок при просмотре шаблонов изменений. Не влияет на порядок колонок.';
    $Self->{Translation}->{'Defines the signals for each ITSM change state.'} = '';
    $Self->{Translation}->{'Defines the template types that will be used as filters in the template overview.'} =
        'Задает типы шаблонов, которые будут использоваться ка фильтры при просмотре шаблонов.';
    $Self->{Translation}->{'Defines the workorder states that will be used as filters in the MyWorkorders overview.'} =
        'Задает состояния задач, которые будут использоваться в качестве фильтра при просмотре Моих задач.';
    $Self->{Translation}->{'Defines the workorder states that will be used as filters in the PIR overview.'} =
        'Задает состояния задач, которые будут использоваться в качестве фильтра при просмотре PIR.';
    $Self->{Translation}->{'Defines the workorder types that will be used to show the PIR overview.'} =
        'Задает типы задач, которые будут использоваться при просмотре PIR.';
    $Self->{Translation}->{'Defines whether notifications should be sent.'} = 'Задает, следует ли отправлять уведомления.';
    $Self->{Translation}->{'Delete a change.'} = 'Удалить изменение.';
    $Self->{Translation}->{'Delete the change.'} = 'Удалить изменение.';
    $Self->{Translation}->{'Delete the workorder.'} = 'Удалить задачу.';
    $Self->{Translation}->{'Details of a change history entry.'} = 'Детали записи Истории Изменения.';
    $Self->{Translation}->{'Determines if an agent can exchange the X-axis of a stat if he generates one.'} =
        'Задает возможность агенту поменять ось Х на графике при его создании.';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about changes done for config item classes.'} =
        'Определяет, может ли базовый модуль отчетов строить отчеты об изменениях выполненных для классов учетных элементов.';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about changes regarding change state updates within a timeperiod.'} =
        'Определяет, может ли базовый модуль отчетов строить отчеты об изменениях, в зависисмости от того, изменялось ли состояние изменения за период времени.';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about changes regarding the relation between changes and incident tickets.'} =
        'Определяет, может ли базовый модуль отчетов строить отчеты об изменениях, в зависимости от отношений между изменением и заявкой об инциденте.';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about changes.'} =
        'Определяет, может ли базовый модуль отчетов строить отчеты об изменениях.';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about the number of Rfc tickets a requester created.'} =
        'Определяет, может ли базовый модуль отчетов строить отчеты о количестве созданных заявителем заявок с запросами на изменение (Rfc).';
    $Self->{Translation}->{'Dynamic fields (for changes and workorders) shown in the change print screen of the agent interface.'} =
        'Динамические поля (для изменений и задач), отображаемые на экране печати изменений интерфейса агента.';
    $Self->{Translation}->{'Dynamic fields shown in the change add screen of the agent interface.'} =
        'Динамические поля, отображаемые в окне добавления изменения в интерфейсе агента.';
    $Self->{Translation}->{'Dynamic fields shown in the change edit screen of the agent interface.'} =
        'Динамические поля, отображаемые в окне редактирования изменений в интерфейсе агента.';
    $Self->{Translation}->{'Dynamic fields shown in the change search screen of the agent interface.'} =
        'Динамические поля, отображаемые в окне поиска изменений в интерфейсе агента.';
    $Self->{Translation}->{'Dynamic fields shown in the change zoom screen of the agent interface.'} =
        'Динамические поля, отображаемые в окне просмотра изменений в интерфейсе агента.';
    $Self->{Translation}->{'Dynamic fields shown in the workorder add screen of the agent interface.'} =
        'Динамические поля, отображаемые в окне добавления задачи в интерфейсе агента.';
    $Self->{Translation}->{'Dynamic fields shown in the workorder edit screen of the agent interface.'} =
        'Динамические поля, отображаемые в окне редактирования задачи в интерфейсе агента.';
    $Self->{Translation}->{'Dynamic fields shown in the workorder report screen of the agent interface.'} =
        'Динамические поля, отображаемые в окне отчета по задачам в интерфейсе агента.';
    $Self->{Translation}->{'Dynamic fields shown in the workorder zoom screen of the agent interface.'} =
        'Динамические поля, отображаемые в окне просмотра задачи в интерфейсе агента.';
    $Self->{Translation}->{'DynamicField event module to handle the update of conditions if dynamic fields are added, updated or deleted.'} =
        'Модуль управления событиями для динамических полей при изменении Условий, если динамические поля добавляются, изменяются или удаляются.';
    $Self->{Translation}->{'Edit a change.'} = 'Редактировать изменение.';
    $Self->{Translation}->{'Edit the change.'} = 'Редактировать изменение.';
    $Self->{Translation}->{'Edit the conditions of the change.'} = 'Редактировать условия изменения.';
    $Self->{Translation}->{'Edit the workorder.'} = 'Редактировать задачу.';
    $Self->{Translation}->{'Enables the minimal change counter size (if "Date" was selected as ITSMChange::NumberGenerator).'} =
        '';
    $Self->{Translation}->{'Forward schedule of changes. Overview over approved changes.'} =
        'Планирование перемещения Изменений. Обзор порядка утверждения Изменений.';
    $Self->{Translation}->{'History Zoom'} = 'История подробно';
    $Self->{Translation}->{'ITSM Change CAB Templates.'} = 'Шаблоны для ITSM CAB.';
    $Self->{Translation}->{'ITSM Change Condition Edit.'} = 'Редактирование Условий для Изменений ITSM.';
    $Self->{Translation}->{'ITSM Change Condition Overview.'} = 'Обзор Условий для Изменений ITSM.';
    $Self->{Translation}->{'ITSM Change Manager Overview.'} = 'Обзор Управляющих Изменениями в ITSM';
    $Self->{Translation}->{'ITSM Change Notifications'} = '';
    $Self->{Translation}->{'ITSM Change PIR Overview.'} = 'Обзор ITSM Change PIR';
    $Self->{Translation}->{'ITSM Change notification rules'} = 'Правила Уведомления в Управлении Изменениями';
    $Self->{Translation}->{'ITSM MyCAB Overview.'} = 'Обзор МоиCAB';
    $Self->{Translation}->{'ITSM MyChanges Overview.'} = 'Обзор МоиИзменения';
    $Self->{Translation}->{'ITSM MyWorkorders Overview.'} = 'Обзор МоиЗадачи.';
    $Self->{Translation}->{'ITSM Template Delete.'} = 'Удаление шаблонов ITSM.';
    $Self->{Translation}->{'ITSM Template Edit CAB.'} = 'Редактирование шаблонов CAB.';
    $Self->{Translation}->{'ITSM Template Edit Content.'} = 'Редактировать содержимое шаблонов ITSM.';
    $Self->{Translation}->{'ITSM Template Edit.'} = 'Редактировать шаблон ITSM.';
    $Self->{Translation}->{'ITSM Template Overview.'} = 'Обзор шаблонов в ITSM .';
    $Self->{Translation}->{'ITSM event module that cleans up conditions.'} = 'ITSM модуль обработки событий, очищающий условия.';
    $Self->{Translation}->{'ITSM event module that deletes the cache for a toolbar.'} = 'ITSM модуль управления событиями, который очищает кэш для панели инструментов.';
    $Self->{Translation}->{'ITSM event module that deletes the history of changes.'} = 'ITSM модуль обработки событий, удаляющий историю Изменений.';
    $Self->{Translation}->{'ITSM event module that matches conditions and executes actions.'} =
        'ITSM модуль обработки событий, проверяющий соответствие условиям и выполняющий действия.';
    $Self->{Translation}->{'ITSM event module that sends notifications.'} = 'ITSM модуль обработки событий, отправляющий уведомления.';
    $Self->{Translation}->{'ITSM event module that updates the history of changes.'} = 'ITSM модуль обработки событий, обновляющий историю изменений.';
    $Self->{Translation}->{'ITSM event module that updates the history of conditions.'} = 'ITSM модуль обработки событий, обновляющий историю Условий.';
    $Self->{Translation}->{'ITSM event module that updates the history of workorders.'} = 'ITSM модуль обработки событий, обновляющий историю Задач.';
    $Self->{Translation}->{'ITSM event module to recalculate the workorder numbers.'} = 'ITSM модуль обработки событий, перевычисляющий номера задач.';
    $Self->{Translation}->{'ITSM event module to set the actual start and end times of workorders.'} =
        'ITSM модуль обработки событий, устанавливающий фактическое время начала и окончания задач.';
    $Self->{Translation}->{'ITSMChange'} = 'ITSMChange';
    $Self->{Translation}->{'ITSMWorkOrder'} = 'ITSMWorkOrder';
    $Self->{Translation}->{'If frequency is \'regularly\', you can configure how often the notifications are sent (every X hours).'} =
        'Если частота указана как "regularly" вы можете задать как часто будут отправляться уведомления (каждые Х часов).';
    $Self->{Translation}->{'Link another object to the change.'} = 'Связать другой объект с изменением';
    $Self->{Translation}->{'Link another object to the workorder.'} = 'Связать другой объект с задачей';
    $Self->{Translation}->{'List of all change events to be displayed in the GUI.'} = '';
    $Self->{Translation}->{'List of all workorder events to be displayed in the GUI.'} = '';
    $Self->{Translation}->{'Lookup of CAB members for autocompletion.'} = 'Список членов CAB для автозавершения.';
    $Self->{Translation}->{'Lookup of agents, used for autocompletion.'} = 'Список агентов для автозавершения.';
    $Self->{Translation}->{'Manage ITSM Change Management state machine.'} = '';
    $Self->{Translation}->{'Manage the category ↔ impact ↔ priority matrix.'} = '';
    $Self->{Translation}->{'Module to check if WorkOrderAdd or WorkOrderAddFromTemplate should be permitted.'} =
        'Модуль, проверяющий, что WorkOrderAdd или WorkOrderAddFromTemplate должны быть разрешены.';
    $Self->{Translation}->{'Module to check the CAB members.'} = 'Модуль проверки члено CAB.';
    $Self->{Translation}->{'Module to check the agent.'} = 'Модуль проверки агента.';
    $Self->{Translation}->{'Module to check the change builder.'} = 'Модуль проверки составителя изменения.';
    $Self->{Translation}->{'Module to check the change manager.'} = 'Модуль проверки менеджера изменений.';
    $Self->{Translation}->{'Module to check the workorder agent.'} = 'Модуль проверки задач агента.';
    $Self->{Translation}->{'Module to check whether no workorder agent is set.'} = 'Модуль проверки отсутствия задач у агента.';
    $Self->{Translation}->{'Module to check whether the agent is contained in the configured list.'} =
        'Модуль проверки содержится ли агент в списке конфигурации.';
    $Self->{Translation}->{'Module to show a link to create a change from this ticket. The ticket will be automatically linked with the new change.'} =
        'Модуль для отображении ссылки на создание изменения из этой заявки. Заявка будет автоматически связана с новым изменением.';
    $Self->{Translation}->{'Move Time Slot.'} = 'Сместить диапазон времени.';
    $Self->{Translation}->{'Move all workorders in time.'} = 'Перенести все задачи по времени.';
    $Self->{Translation}->{'New (from template)'} = 'Новое из шаблона';
    $Self->{Translation}->{'Only users of these groups have the permission to use the ticket types as defined in "ITSMChange::AddChangeLinkTicketTypes" if the feature "Ticket::Acl::Module###200-Ticket::Acl::Module" is enabled.'} =
        'Пользователи только указанных групп имеют права на использование типов заявок заданных в "ITSMChange::AddChangeLinkTicketTypes", если параметр "Ticket::Acl::Module###200-Ticket::Acl::Module" включен.';
    $Self->{Translation}->{'Other Settings'} = 'Прочие настройки';
    $Self->{Translation}->{'Overview over all Changes.'} = 'Обзор всех Изменений.';
    $Self->{Translation}->{'PIR (Post Implementation Review)'} = 'PIR (Post Implementation Review/Анализ после выполнения)';
    $Self->{Translation}->{'Parameters for the UserCreateWorkOrderNextMask object in the preference view of the agent interface.'} =
        'Параметры для объекта UserCreateWorkOrderNextMask в предварительном просмотре в интерфейсе агента';
    $Self->{Translation}->{'Parameters for the pages (in which the changes are shown) of the small change overview.'} =
        'Параметры для страниц (на которых отображаются изменения) в кратком (small) обзоре изменений.';
    $Self->{Translation}->{'Performs the configured action for each event (as an Invoker) for each configured Webservice.'} =
        'Выполняет заданное действие для каждого события (как Invoker) для каждого настроенного Webservice.';
    $Self->{Translation}->{'Planned end time'} = '';
    $Self->{Translation}->{'Planned start time'} = '';
    $Self->{Translation}->{'Print the change.'} = 'Печать изменения.';
    $Self->{Translation}->{'Print the workorder.'} = 'Печать задачи.';
    $Self->{Translation}->{'Projected Service Availability'} = 'Проектируемая доступность сервиса';
    $Self->{Translation}->{'Projected Service Availability (PSA)'} = 'Проектируемая доступность сервиса (PSA)';
    $Self->{Translation}->{'Projected Service Availability (PSA) of changes. Overview of approved changes and their services.'} =
        'Проектируемая доступность сервиса (PSA) для Изменений. Обзор утвержденных Изменений и их Сервисов.';
    $Self->{Translation}->{'Requested time'} = '';
    $Self->{Translation}->{'Required privileges in order for an agent to take a workorder.'} =
        'Привилегии, требуемые агенту для принятия задачи в работу.';
    $Self->{Translation}->{'Required privileges to access the overview of all changes.'} = 'Привилегии, требуемые агенту для просмотра всех изменений.';
    $Self->{Translation}->{'Required privileges to add a workorder.'} = 'Привилегии, требуемые агенту для добавления новой задачи.';
    $Self->{Translation}->{'Required privileges to change the workorder agent.'} = 'Привилегии, требуемые агенту для изменения агента задачи.';
    $Self->{Translation}->{'Required privileges to create a template from a change.'} = 'Привилегии, требуемые агенту для создания шаблона из изменения.';
    $Self->{Translation}->{'Required privileges to create a template from a changes\' CAB.'} =
        'Привилегии, требуемые агенту для создания шаблона из изменения или CAB.';
    $Self->{Translation}->{'Required privileges to create a template from a workorder.'} = 'Привилегии, требуемые агенту для создания шаблона из задачи.';
    $Self->{Translation}->{'Required privileges to create changes from templates.'} = 'Права, требуемые для создания изменений с использованием шаблонов.';
    $Self->{Translation}->{'Required privileges to create changes.'} = 'Привилегии, требуемые агенту для создания изменения.';
    $Self->{Translation}->{'Required privileges to delete a template.'} = 'Привилегии, требуемые агенту для удаления шаблона.';
    $Self->{Translation}->{'Required privileges to delete a workorder.'} = 'Привилегии, требуемые агенту для удаления задачи.';
    $Self->{Translation}->{'Required privileges to delete changes.'} = 'Права, требуемые для удаления изменений.';
    $Self->{Translation}->{'Required privileges to edit a template.'} = 'Привилегии, требуемые агенту для редактирования шаблона.';
    $Self->{Translation}->{'Required privileges to edit a workorder.'} = 'Привилегии, требуемые агенту для редактирования задачи.';
    $Self->{Translation}->{'Required privileges to edit changes.'} = 'Привилегии, требуемые агенту для редактирования изменения.';
    $Self->{Translation}->{'Required privileges to edit the conditions of changes.'} = 'Привилегии, требуемые агенту для редактирования условий изменения.';
    $Self->{Translation}->{'Required privileges to edit the content of a template.'} = 'Права, необходимые для редактирования содержимого шаблона.';
    $Self->{Translation}->{'Required privileges to edit the involved persons of a change.'} =
        'Привилегии, требуемые агенту для редактирования списка вовлеченных сотрудников в изменении.';
    $Self->{Translation}->{'Required privileges to move changes in time.'} = 'Привилегии, требуемые агенту для сдвига временНых границ изменения.';
    $Self->{Translation}->{'Required privileges to print a change.'} = 'Привилегии, требуемые агенту для печати изменения.';
    $Self->{Translation}->{'Required privileges to reset changes.'} = 'Права, требуемые для очистки изменений.';
    $Self->{Translation}->{'Required privileges to view a workorder.'} = 'Привилегии, требуемые агенту для просмотра задачи.';
    $Self->{Translation}->{'Required privileges to view changes.'} = 'Привилегии, требуемые агенту для просмотра изменений.';
    $Self->{Translation}->{'Required privileges to view list of changes where the user is a CAB member.'} =
        'Привилегии, требуемые агенту для просмотра списка изменений, в которых агент является членом CAB.';
    $Self->{Translation}->{'Required privileges to view list of changes where the user is the change manager.'} =
        'Привилегии, требуемые агенту для просмотра списка изменений, в которых агент является менеджером изменений.';
    $Self->{Translation}->{'Required privileges to view overview over all templates.'} = 'Привилегии, требуемые агенту для просмотра всех шаблонов.';
    $Self->{Translation}->{'Required privileges to view the conditions of changes.'} = 'Привилегии, требуемые агенту для просмотра условий изменений.';
    $Self->{Translation}->{'Required privileges to view the history of a change.'} = 'Привилегии, требуемые агенту для просмтора истории изменения.';
    $Self->{Translation}->{'Required privileges to view the history of a workorder.'} = 'Привилегии, требуемые агенту для просмотра истории задачи.';
    $Self->{Translation}->{'Required privileges to view the history zoom of a change.'} = 'Привилегии, требуемые агенту для просмотра подробной истории изменения.';
    $Self->{Translation}->{'Required privileges to view the history zoom of a workorder.'} =
        'Привилегии, требуемые агенту для просмотра подробной истории задачи.';
    $Self->{Translation}->{'Required privileges to view the list of Change Schedule.'} = 'Привилегии, требуемые агенту для просмотра списка Планировщика изменений.';
    $Self->{Translation}->{'Required privileges to view the list of change PSA.'} = 'Привилегии, требуемые агенту для просмотра списка PSA.';
    $Self->{Translation}->{'Required privileges to view the list of changes with an upcoming PIR (Post Implementation Review).'} =
        'Привилегии, требуемые агенту для просмотра списка изменений с предстоящим PIR (Post Implementation Review).';
    $Self->{Translation}->{'Required privileges to view the list of own changes.'} = 'Привилегии, требуемые агенту для просмотра собственных изменений.';
    $Self->{Translation}->{'Required privileges to view the list of own workorders.'} = 'Привилегии, требуемые агенту для просмотра списка собственных задач.';
    $Self->{Translation}->{'Required privileges to write a report for the workorder.'} = 'Привилегии, требуемые агенту для создания отчета по задачам';
    $Self->{Translation}->{'Reset a change and its workorders.'} = 'Очистить Изменение и его Задачи.';
    $Self->{Translation}->{'Reset change and its workorders.'} = 'Очистить изменение и его задачи.';
    $Self->{Translation}->{'Run task to check if specific times have been reached in changes and workorders.'} =
        'Запустить задание для проверки достижимости значений времени в Изменениях и Задачах.';
    $Self->{Translation}->{'Save change as a template.'} = 'Сохранить изменение как шаблон.';
    $Self->{Translation}->{'Save workorder as a template.'} = 'Сохранить задачу как шаблон.';
    $Self->{Translation}->{'Schedule'} = 'Расписание';
    $Self->{Translation}->{'Screen after creating a workorder'} = 'Показать этот экран после создания новой задачи';
    $Self->{Translation}->{'Search Changes'} = 'Поиск изменений';
    $Self->{Translation}->{'Search Changes.'} = 'Поиск изменений.';
    $Self->{Translation}->{'Selects the change number generator module. "AutoIncrement" increments the change number, the SystemID and the counter are used with SystemID.counter format (e.g. 100118, 100119). With "Date", the change numbers will be generated by the current date and a counter; this format looks like Year.Month.Day.counter, e.g. 2010062400001, 2010062400002. With "DateChecksum", the counter will be appended as checksum to the string of date plus the SystemID. The checksum will be rotated on a daily basis. This format looks like Year.Month.Day.SystemID.Counter.CheckSum, e.g. 2010062410000017, 2010062410000026.'} =
        'Задает способ генерации номеров изменений. "AutoIncrement" - увеличивает номер на 1, формат - SystemID.counter (например, 100118, 100119). "Date" - использует текущую дату, SystemID и счетчик, вид: Year.Month.Day.SystemID.counter - 2010062400001, 2010062400002. "DateChecksum" - счетчик дополняется контрольной суммой к строке из даты и SystemID. Формат строится как Year.Month.Day.SystemID.Counter.CheckSum. Контрольная сумма обновляется ежедневно, вид: 2010062410000017, 2010062410000026.';
    $Self->{Translation}->{'Set the agent for the workorder.'} = 'Назначить агента по задаче.';
    $Self->{Translation}->{'Set the default height (in pixels) of inline HTML fields in the change zoom screen and workorder zoom screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Set the maximum height (in pixels) of inline HTML fields in the change zoom screen and workorder zoom screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Sets the minimal change counter size (if "AutoIncrement" was selected as ITSMChange::NumberGenerator). Default is 5, this means the counter starts from 10000.'} =
        'Задает минимальное количество разрядов для счетчика изменений (если выбран тип "AutoIncrement" для ITSMChange::NumberGenerator). По умолчанию - 5, что означает, что начальное значение счетчика будет 10000.';
    $Self->{Translation}->{'Sets up the state machine for changes.'} = 'Задает state machine для изменений.';
    $Self->{Translation}->{'Sets up the state machine for workorders.'} = 'Задает state machine для заданий.';
    $Self->{Translation}->{'Shows a checkbox in the workorder edit screen of the agent interface that defines if the the following workorders should also be moved if a workorder is modified and the planned end time has changed.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu that allows changing the workorder agent, in the zoom view of the workorder of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu that allows defining a change as a template in the zoom view of the change, in the agent interface.'} =
        'Отображает ссылку в меню, которая позволяет определить изменения как шаблон в детальном просмотре изменения в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu that allows defining a workorder as a template in the zoom view of the workorder, in the agent interface.'} =
        'Отображает ссылку в меню, которая позволяет определить Задачу как шаблон в детальном просмотре Задачи в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu that allows editing the report of a workorder, in the zoom view of the workorder of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu that allows linking a change with another object in the change zoom view of the agent interface.'} =
        'Отображает ссылку в меню, которая позволяет установить связь изменения с другим объекторм в детальном просмотре изменения в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu that allows linking a workorder with another object in the zoom view of the workorder of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu that allows moving the time slot of a change in its zoom view of the agent interface.'} =
        'Отображает ссылку в меню которая позволяет перемещать временной интервал изменения в его детальном просмотре в агентском интерфейсе.';
    $Self->{Translation}->{'Shows a link in the menu that allows taking a workorder in the its zoom view of the agent interface.'} =
        'Отображает ссылку которая позволяет принять задачу в работу при её детальном просмотре в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to access the conditions of a change in the its zoom view of the agent interface.'} =
        'Отображает ссылку в меню для доступа к условиям изменения в его детальном просмотре в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to access the history of a change in the its zoom view of the agent interface.'} =
        'Отображает ссылку в меня для доступа к истории изменения в его детальном просмотре в интерфейсе агента';
    $Self->{Translation}->{'Shows a link in the menu to access the history of a workorder in the its zoom view of the agent interface.'} =
        'Отображает ссылку в меню для доступа к истории Задачи при её детальном просмотре в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to add a workorder in the change zoom view of the agent interface.'} =
        'Отображает ссылку в меню для добавления Задачи в детальном просмотре Изменения в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to delete a change in its zoom view of the agent interface.'} =
        'Показывает пункт меню для удаления изменения при его подробном просмотре в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to delete a workorder in its zoom view of the agent interface.'} =
        'Показывает пункт меню для удаления задачи при её подробном просмотре в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to edit a change in the its zoom view of the agent interface.'} =
        'Отображает ссылку в меню для редактирования измененя в его детальном просмотре в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to edit a workorder in the its zoom view of the agent interface.'} =
        'Отображает ссылку в меню для редактирования Задачи в её детальном просмотре в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to go back in the change zoom view of the agent interface.'} =
        'Отображает ссылку в меню для возврата в детальный просмотр изменения в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to go back in the workorder zoom view of the agent interface.'} =
        'Отображает ссылку в меню для возврата назад в детальном просмотре Задачи в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to print a change in the its zoom view of the agent interface.'} =
        'Отображает ссылку в меню для печати изменения при его детальном просмотре в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to print a workorder in the its zoom view of the agent interface.'} =
        'Отображает ссылку в меню для печати Задачи при ее детальном просмотре в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to reset a change and its workorders in its zoom view of the agent interface.'} =
        'Показывает пункт меню для очистки изменения и его задач при его подробном просмотре в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to show the involved persons in a change, in the zoom view of the change in the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows the change history (reverse ordered) in the agent interface.'} =
        'Показывает историю изменений (в обратном порядке) в интерфейсе агента.';
    $Self->{Translation}->{'State Machine'} = 'Состояния';
    $Self->{Translation}->{'Stores change and workorder ids and their corresponding template id, while a user is editing a template.'} =
        'Сохраняет идентфикаторы - id\'s изменениия и задачи и их соответствующие идентификаторы шаблонов во время редактирования их пользователем.';
    $Self->{Translation}->{'Take Workorder'} = 'Взять задачу';
    $Self->{Translation}->{'Take Workorder.'} = 'Взять Задачу в работу.';
    $Self->{Translation}->{'Take the workorder.'} = 'Взять задачу.';
    $Self->{Translation}->{'Template Overview'} = 'Обзор шаблонов';
    $Self->{Translation}->{'Template type'} = '';
    $Self->{Translation}->{'Template.'} = 'Шаблон.';
    $Self->{Translation}->{'The identifier for a change, e.g. Change#, MyChange#. The default is Change#.'} =
        'Индентификатор для изменения, например Change#, MyChange#. The default is Change#.';
    $Self->{Translation}->{'The identifier for a workorder, e.g. Workorder#, MyWorkorder#. The default is Workorder#.'} =
        'Индентификатор для задания, например Workorder#, MyWorkorder#. The default is Workorder#.';
    $Self->{Translation}->{'This ACL module restricts the usuage of the ticket types that are defined in the sysconfig option \'ITSMChange::AddChangeLinkTicketTypes\', to users of the groups as defined in "ITSMChange::RestrictTicketTypes::Groups". As this ACL could collide with other ACLs which are also related to the ticket type, this sysconfig option is disabled by default and should only be activated if needed.'} =
        'Этот ACL модуль ограничивает использование типов заявок заданных в параметре \'ITSMChange::AddChangeLinkTicketTypes\', для агентов групп, указанных в "ITSMChange::RestrictTicketTypes::Groups". Так как этот ACL может конфликтовать с другими ACL, также связанными с типами заявок, этот параметр отключен по умолчанию и может быть, при необходимости, активирован вручную.';
    $Self->{Translation}->{'Time Slot'} = 'Диапазон дат';
    $Self->{Translation}->{'Types of tickets, where in the ticket zoom view a link to add a change will be displayed.'} =
        'Типы заявок, в которых подробном просмотре ссылка для добавления изменения будет показана.';
    $Self->{Translation}->{'User Search'} = 'Поиск пользователя';
    $Self->{Translation}->{'Workorder Add (from template).'} = 'Добавить Задачу (используя шаблон)';
    $Self->{Translation}->{'Workorder Add.'} = 'Добавление Задачи.';
    $Self->{Translation}->{'Workorder Agent.'} = 'Агент Задачи.';
    $Self->{Translation}->{'Workorder Delete.'} = 'Удаление Задачи.';
    $Self->{Translation}->{'Workorder Edit.'} = 'Редактирование Задачи.';
    $Self->{Translation}->{'Workorder History Zoom.'} = 'История Задачи подробно.';
    $Self->{Translation}->{'Workorder History.'} = 'История Задачи.';
    $Self->{Translation}->{'Workorder Report.'} = 'Отчет по Задаче.';
    $Self->{Translation}->{'Workorder Zoom'} = 'Просмотр задачи.';
    $Self->{Translation}->{'Workorder Zoom.'} = 'Просмотр Задачи.';
    $Self->{Translation}->{'once'} = 'один раз';
    $Self->{Translation}->{'regularly'} = 'регулярно';


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
