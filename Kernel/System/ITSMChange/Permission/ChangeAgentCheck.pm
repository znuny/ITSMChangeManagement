# --
# Copyright (C) 2001-2021 OTRS AG, https://otrs.com/
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::System::ITSMChange::Permission::ChangeAgentCheck;

use strict;
use warnings;

our @ObjectDependencies = (
    'Kernel::System::Group',
    'Kernel::System::Log',
);

=head1 NAME

Kernel::System::ITSMChange::Permission::ChangeAgentCheck - change agent based permission check

=head1 PUBLIC INTERFACE

=head2 new()

Create an object.

    use Kernel::System::ObjectManager;
    local $Kernel::OM = Kernel::System::ObjectManager->new();
    my $CheckObject = $Kernel::OM->Get('Kernel::System::ITSMChange::Permission::ChangeAgentCheck');

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    return $Self;
}

=head2 Run()

This method does the check. C<ro> access is allowed when the agent is a <ro> member
of the 'itsm-change' group.

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

    # the check is based upon the change agent
    my $GroupID = $Kernel::OM->Get('Kernel::System::Group')->GroupLookup(
        Group => 'itsm-change',
    );

    # deny access, when the group is not found
    return if !$GroupID;

    # get user groups, where the user has the appropriate privilege
    my %Groups = $Kernel::OM->Get('Kernel::System::Group')->GroupMemberList(
        UserID => $Param{UserID},
        Type   => $Param{Type},
        Result => 'HASH',
    );

    # deny access if the agent doesn't have the appropriate type in the appropriate group
    return if !$Groups{$GroupID};

    # change agents are granted ro access
    return 1;
}

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (L<https://otrs.org/>).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (GPL). If you
did not receive this file, see L<https://www.gnu.org/licenses/gpl-3.0.txt>.

=cut

1;
