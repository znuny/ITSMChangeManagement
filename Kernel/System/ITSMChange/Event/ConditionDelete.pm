# --
# Copyright (C) 2001-2021 OTRS AG, https://otrs.com/
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::System::ITSMChange::Event::ConditionDelete;

use strict;
use warnings;

our @ObjectDependencies = (
    'Kernel::System::ITSMChange::ITSMCondition',
    'Kernel::System::Log',
);

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(Data Event Config UserID)) {
        if ( !$Param{$Argument} ) {
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    # handle deletion of a change
    if ( $Param{Event} eq 'ChangeDeletePost' ) {

        # delete all conditions (and expressions and actions) for this change id
        my $Success = $Kernel::OM->Get('Kernel::System::ITSMChange::ITSMCondition')->ConditionDeleteAll(
            ChangeID => $Param{Data}->{ChangeID},
            UserID   => $Param{UserID},
        );

        # handle error
        if ( !$Success ) {
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => "ConditionDeleteAll() failed for ChangeID '$Param{Data}->{ChangeID}'!"
            );
            return;
        }

        return 1;
    }

    # error
    else {

        # an unknown event
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => "$Param{Event} is an unknown event!",
        );

        return;
    }

    return 1;
}

1;
