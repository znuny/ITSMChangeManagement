# --
# Copyright (C) 2001-2021 OTRS AG, https://otrs.com/
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::System::Stats::Dynamic::ITSMChangeManagementRfcRequester;

use strict;
use warnings;

our @ObjectDependencies = (
    'Kernel::Config',
    'Kernel::System::CustomerUser',
    'Kernel::System::DateTime',
    'Kernel::System::Ticket',
    'Kernel::System::User',
);

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    return $Self;
}

sub GetObjectName {
    my ( $Self, %Param ) = @_;

    return 'ITSMChangeManagementRfcRequester';
}

sub GetObjectBehaviours {
    my ( $Self, %Param ) = @_;

    my %Behaviours = (
        ProvidesDashboardWidget => 1,
    );

    return %Behaviours;
}

sub GetObjectAttributes {
    my ( $Self, %Param ) = @_;

    my $RfCTypes = $Kernel::OM->Get('Kernel::Config')->Get('ITSMChange::AddChangeLinkTicketTypes');

    # get all rfcs
    my @TicketIDs = $Kernel::OM->Get('Kernel::System::Ticket')->TicketSearch(
        UserID     => 1,
        Permission => 'ro',
        Limit      => 100_000_000,
        Types      => $RfCTypes,
        Result     => 'ARRAY',
    );

    # get all requester
    my %Requester;

    TICKETID:
    for my $TicketID (@TicketIDs) {
        my %Ticket = $Kernel::OM->Get('Kernel::System::Ticket')->TicketGet(
            TicketID => $TicketID,
            UserID   => 1,
        );

        next TICKETID if !%Ticket;

        if ( $Ticket{CustomerUserID} ) {
            my $CustomerUserID = $Ticket{CustomerUserID};

            next TICKETID if $Requester{"customer_$CustomerUserID"};

            my %CustomerUser = $Kernel::OM->Get('Kernel::System::CustomerUser')->CustomerUserDataGet(
                User => $CustomerUserID,
            );

            $Requester{"customer_$CustomerUserID"} = $CustomerUser{UserFullname};
        }
        else {
            my $OwnerID = $Ticket{OwnerID};

            next TICKETID if $Requester{"agent_$OwnerID"};

            my %User = $Kernel::OM->Get('Kernel::System::User')->GetUserData(
                UserID => $OwnerID,
            );

            $Requester{"agent_$OwnerID"} = $User{UserFullname};
        }
    }

    # get current time to fix bug#4870
    my $Today = $Kernel::OM->Create('Kernel::System::DateTime')->Format( Format => '%Y-%m-%d 23:59:59' );

    my @ObjectAttributes = (
        {
            Name             => 'Requester',
            UseAsXvalue      => 0,
            UseAsValueSeries => 1,
            UseAsRestriction => 0,
            SelectedValues   => [ keys %Requester ],
            Element          => 'Requester',
            Block            => 'MultiSelectField',
            Values           => \%Requester,
        },
        {
            Name             => 'Timeperiod',
            UseAsXvalue      => 1,
            UseAsValueSeries => 0,
            UseAsRestriction => 0,
            Element          => 'TimePeriod',
            TimePeriodFormat => 'DateInputFormat',    # 'DateInputFormatLong',
            Block            => 'Time',
            TimeStop         => $Today,
            Values           => {
                TimeStart => 'TicketCreateTimeNewerDate',
                TimeStop  => 'TicketCreateTimeOlderDate',
            },
        },
    );

    return @ObjectAttributes;
}

sub GetStatElementPreview {
    my ( $Self, %Param ) = @_;

    return int rand 50;
}

sub GetStatElement {
    my ( $Self, %Param ) = @_;

    # check what type of requester we have
    # ticket search criteria differ for agents and customers
    my $Type = '';
    my $ID;
    if ( $Param{Requester} && $Param{Requester}->[0] ) {
        ( $Type, $ID ) = split /_/, $Param{Requester}->[0];
        my $Key = $Type eq 'agent' ? 'OwnerIDs' : 'CustomerUserLogin';
        $Param{$Key} = [$ID];
    }

    # get ticket types that are handled as RfCs
    my $RfCTypes = $Kernel::OM->Get('Kernel::Config')->Get('ITSMChange::AddChangeLinkTicketTypes');

    # search tickets
    my @TicketIDs = $Kernel::OM->Get('Kernel::System::Ticket')->TicketSearch(
        UserID     => 1,
        Result     => 'ARRAY',
        Permission => 'ro',
        Limit      => 100_000_000,
        Types      => $RfCTypes,
        %Param,
    );

    # if this wants the number of RfCs for an agent we have to check
    # whether a customer id is in the ticket. The owner is *NOT* the
    # requester then.
    if ( $Type eq 'agent' ) {
        my $Count = 0;

        TICKETID:
        for my $TicketID (@TicketIDs) {
            my %Ticket = $Kernel::OM->Get('Kernel::System::Ticket')->TicketGet(
                TicketID => $TicketID,
            );

            next TICKETID if !%Ticket;
            next TICKETID if $Ticket{CustomerUserID};

            $Count++;
        }

        return $Count;
    }

    return scalar @TicketIDs;
}

sub ExportWrapper {
    my ( $Self, %Param ) = @_;

    return \%Param;
}

sub ImportWrapper {
    my ( $Self, %Param ) = @_;

    return \%Param;
}

1;
