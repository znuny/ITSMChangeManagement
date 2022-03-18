# --
# Copyright (C) 2001-2021 OTRS AG, https://otrs.com/
# Copyright (C) 2021-2022 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::System::ITSMChange::Event::ToolBarChangeManagerCacheDelete;

use strict;
use warnings;

our @ObjectDependencies = (
    'Kernel::System::Cache',
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

    # set the cache type prefix
    my $CacheTypePrefix = 'ITSMChangeManagementToolBarChangeManager';

    # handle adding of a change
    if ( $Param{Event} eq 'ChangeAddPost' ) {

        # do nothing if the ChangeManagerID was not set
        return 1 if !$Param{Data}->{ChangeManagerID};

        # set the cache type
        my $CacheType = $CacheTypePrefix . $Param{Data}->{ChangeManagerID};

        # delete the cache
        $Kernel::OM->Get('Kernel::System::Cache')->CleanUp(
            Type => $CacheType,
        );

        return 1;
    }

    # handle update of a change
    elsif ( $Param{Event} eq 'ChangeUpdatePost' ) {

        # make sure the data is initialized
        $Param{Data}->{ChangeManagerID} ||= '';
        $Param{Data}->{OldChangeData}->{ChangeManagerID} ||= '';

        # do nothing if the ChangeManagerID did not change
        return 1
            if $Param{Data}->{ChangeManagerID} eq $Param{Data}->{OldChangeData}->{ChangeManagerID};

        # set the cache type postfix
        my @CacheTypePostfixes = (
            $Param{Data}->{ChangeManagerID},
            $Param{Data}->{OldChangeData}->{ChangeManagerID},
        );

        # delete the cache for the old and the current change manager
        CACHETYPEPOSTFIX:
        for my $CacheTypePostfix (@CacheTypePostfixes) {

            # do nothing if the ChangeManagerID was not set
            next CACHETYPEPOSTFIX if !$CacheTypePostfix;

            # set the cache type
            my $CacheType = $CacheTypePrefix . $CacheTypePostfix;

            # delete the cache
            $Kernel::OM->Get('Kernel::System::Cache')->CleanUp(
                Type => $CacheType,
            );
        }

        return 1;
    }

    # handle deleting a change
    elsif ( $Param{Event} eq 'ChangeDeletePost' ) {

        # do nothing if the ChangeManagerID was not set
        return 1 if !$Param{Data}->{OldChangeData}->{ChangeManagerID};

        # set the cache type
        my $CacheType = $CacheTypePrefix . $Param{Data}->{OldChangeData}->{ChangeManagerID};

        # delete the cache
        $Kernel::OM->Get('Kernel::System::Cache')->CleanUp(
            Type => $CacheType,
        );

        return 1;
    }

    return 1;
}

1;
