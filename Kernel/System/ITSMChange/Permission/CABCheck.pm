# --
# Copyright (C) 2001-2021 OTRS AG, https://otrs.com/
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::System::ITSMChange::Permission::CABCheck;

use strict;
use warnings;

our @ObjectDependencies = (
    'Kernel::System::ITSMChange',
    'Kernel::System::Log',
);

=head1 NAME

Kernel::System::ITSMChange::Permission::CABCheck - CAB based permission check

=head1 PUBLIC INTERFACE

=head2 new()

Create an object.

    use Kernel::System::ObjectManager;
    local $Kernel::OM = Kernel::System::ObjectManager->new();
    my $CheckObject = $Kernel::OM->Get('Kernel::System::ITSMChange::Permission::CABCheck');

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    return $Self;
}

=head2 Run()

This method does the check. Access is allowed when type is C<ro> and the agent is a member
of the CAB of the change.

    my $HasAccess = $CheckObject->Run(
        UserID   => 123,
        Type     => 'rw',     # 'ro' or 'rw'
        ChangeID => 3333,     # optional for ChangeAdd
    );

=cut

sub Run {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(UserID Type)) {
        if ( !$Param{$Argument} ) {
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );

            return;
        }
    }

    # only 'ro' access might be granted by this module
    return if $Param{Type} ne 'ro';

    # deny access when there is no change, and thus no CAB
    return if !$Param{ChangeID};

    # get the CAB of the change
    my $CAB = $Kernel::OM->Get('Kernel::System::ITSMChange')->ChangeCABGet(
        UserID   => $Param{UserID},
        ChangeID => $Param{ChangeID},
    );

    # look for a CAB member with the relevant UserID
    my ($FoundCABMember) = grep { $_ == $Param{UserID} } @{ $CAB->{CABAgents} };

    # allow access the the agent is a CAB member
    return 1 if $FoundCABMember;

    # deny access otherwise
    return;
}

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (L<https://otrs.org/>).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (GPL). If you
did not receive this file, see L<https://www.gnu.org/licenses/gpl-3.0.txt>.

=cut

1;
