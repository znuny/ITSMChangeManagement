# --
# Copyright (C) 2001-2021 OTRS AG, https://otrs.com/
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::System::ITSMChange::Permission::ChangeBuilderCheck;

use strict;
use warnings;

our @ObjectDependencies = (
    'Kernel::System::Group',
    'Kernel::System::ITSMChange',
    'Kernel::System::Log',
);

=head1 NAME

Kernel::System::ITSMChange::Permission::ChangeBuilderCheck - change builder based permission check

=head1 PUBLIC INTERFACE

=head2 new()

Create an object.

    use Kernel::System::ObjectManager;
    local $Kernel::OM = Kernel::System::ObjectManager->new();
    my $CheckObject = $Kernel::OM->Get('Kernel::System::ITSMChange::Permission::ChangeBuilderCheck');

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    return $Self;
}

=head2 Run()

This method does the check. When no ChangeID is passed, than C<ro> and C<rw> access is granted
when the agent has the privilege in the 'itsm-change-builder' group.
When the ChangeID was passed, than the agent must additionally be the change builder of the change.

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

    # the check is based upon the change builder
    my $GroupID = $Kernel::OM->Get('Kernel::System::Group')->GroupLookup(
        Group => 'itsm-change-builder',
    );

    # do not grant access, when the group is not found
    return if !$GroupID;

    # get user groups, where the user has the appropriate privilege
    my %Groups = $Kernel::OM->Get('Kernel::System::Group')->GroupMemberList(
        UserID => $Param{UserID},
        Type   => $Param{Type},
        Result => 'HASH',
    );

    # do not grant access if the agent doesn't have the appropriate type in the appropriate group
    return if !$Groups{$GroupID};

    # Allow a change builder to create a change, when there isn't a change yet.
    return 1 if !$Param{ChangeID};

    # there already is a change. e.g. AgentITSMChangeEdit
    my $Change = $Kernel::OM->Get('Kernel::System::ITSMChange')->ChangeGet(
        UserID   => $Param{UserID},
        ChangeID => $Param{ChangeID},
    );

    # do not grant access, when no change was found
    return if !$Change || !%{$Change} || !$Change->{ChangeBuilderID};

    # allow access, when the agent is the change builder of the change
    return 1 if $Change->{ChangeBuilderID} == $Param{UserID};

    # do not grant access otherwise
    return;
}

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (L<https://otrs.org/>).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (GPL). If you
did not receive this file, see L<https://www.gnu.org/licenses/gpl-3.0.txt>.

=cut

1;
