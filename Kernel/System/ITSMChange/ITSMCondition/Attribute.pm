# --
# Copyright (C) 2001-2021 OTRS AG, https://otrs.com/
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::System::ITSMChange::ITSMCondition::Attribute;

use strict;
use warnings;

# IMPORTANT!
# Do not delete this line! This prevents the "Frontend/Basic" UnitTest from failing
# on opensuse 11.3 and 11.4 (64bit) if mod_perl is used!

use vars qw($VERSION);

our $ObjectManagerDisabled = 1;

=head1 NAME

Kernel::System::ITSMChange::ITSMCondition::Attribute - condition attribute lib

=head1 PUBLIC INTERFACE

=head2 AttributeAdd()

Add a new condition attribute.

    my $AttributeID = $ConditionObject->AttributeAdd(
        Name   => 'AttributeName',
        UserID => 1,
    );

=cut

sub AttributeAdd {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(Name UserID)) {
        if ( !$Param{$Argument} ) {
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    # make lookup with given name for checks
    my $AttributeID = $Self->AttributeLookup(
        Name => $Param{Name},
    );

    # check if attribute name already exists
    if ($AttributeID) {
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => "Condition attribute ($Param{Name}) already exists!",
        );
        return;
    }

    # add new attribute name to database
    return if !$Kernel::OM->Get('Kernel::System::DB')->Do(
        SQL => 'INSERT INTO condition_attribute '
            . '(name) '
            . 'VALUES (?)',
        Bind => [ \$Param{Name} ],
    );

    # get id of created attribute
    $AttributeID = $Self->AttributeLookup(
        Name => $Param{Name},
    );

    # check if attribute could be added
    if ( !$AttributeID ) {
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => "AttributeAdd() failed!",
        );
        return;
    }

    # delete cache
    $Kernel::OM->Get('Kernel::System::Cache')->Delete(
        Type => $Self->{CacheType},
        Key  => 'AttributeList',
    );

    return $AttributeID;
}

=head2 AttributeUpdate()

Update a condition attribute.

    my $Success = $ConditionObject->AttributeUpdate(
        AttributeID => 1234,
        Name        => 'NewAttributeName',
        UserID      => 1,
    );

=cut

sub AttributeUpdate {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(AttributeID Name UserID)) {
        if ( !$Param{$Argument} ) {
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    # get attribute data
    my $AttributeData = $Self->AttributeGet(
        AttributeID => $Param{AttributeID},
        UserID      => $Param{UserID},
    );

    # check attribute data
    if ( !$AttributeData ) {
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => "AttributeUpdate of $Param{AttributeID} failed!",
        );
        return;
    }

    # update attribute in database
    return if !$Kernel::OM->Get('Kernel::System::DB')->Do(
        SQL => 'UPDATE condition_attribute '
            . 'SET name = ? '
            . 'WHERE id = ?',
        Bind => [
            \$Param{Name},
            \$Param{AttributeID},
        ],
    );

    # delete cache
    for my $Key (
        'AttributeList',
        'AttributeGet::AttributeID::' . $Param{AttributeID},
        'AttributeLookup::AttributeID::' . $Param{AttributeID},
        'AttributeLookup::Name::' . $AttributeData->{Name},    # use the old name
        )
    {
        $Kernel::OM->Get('Kernel::System::Cache')->Delete(
            Type => $Self->{CacheType},
            Key  => $Key,
        );
    }

    return 1;
}

=head2 AttributeGet()

Get a condition attribute for a given attribute id.
Returns a hash reference of the attribute data.

    my $ConditionAttributeRef = $ConditionObject->AttributeGet(
        AttributeID => 1234,
        UserID      => 1,
    );

The returned hash reference contains following elements:

    $ConditionAttribute{AttributeID}
    $ConditionAttribute{Name}

=cut

sub AttributeGet {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(AttributeID UserID)) {
        if ( !$Param{$Argument} ) {
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    # check cache
    my $CacheKey = 'AttributeGet::AttributeID::' . $Param{AttributeID};
    my $Cache    = $Kernel::OM->Get('Kernel::System::Cache')->Get(
        Type => $Self->{CacheType},
        Key  => $CacheKey,
    );
    return $Cache if $Cache;

    # prepare SQL statement
    return if !$Kernel::OM->Get('Kernel::System::DB')->Prepare(
        SQL   => 'SELECT id, name FROM condition_attribute WHERE id = ?',
        Bind  => [ \$Param{AttributeID} ],
        Limit => 1,
    );

    # fetch the result
    my %AttributeData;
    while ( my @Row = $Kernel::OM->Get('Kernel::System::DB')->FetchrowArray() ) {
        $AttributeData{AttributeID} = $Row[0];
        $AttributeData{Name}        = $Row[1];
    }

    # check error
    if ( !%AttributeData ) {
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => "AttributeID $Param{AttributeID} does not exist!",
        );
        return;
    }

    # set cache
    $Kernel::OM->Get('Kernel::System::Cache')->Set(
        Type  => $Self->{CacheType},
        Key   => $CacheKey,
        Value => \%AttributeData,
        TTL   => $Self->{CacheTTL},
    );

    return \%AttributeData;
}

=head2 AttributeLookup()

This method does a lookup for a condition attribute. If an attribute
id is given, it returns the name of the attribute. If the name of the
attribute is given, the appropriate id is returned.

    my $AttributeName = $ConditionObject->AttributeLookup(
        AttributeID => 4321,
    );

    my $AttributeID = $ConditionObject->AttributeLookup(
        Name   => 'AttributeName',
    );

=cut

sub AttributeLookup {
    my ( $Self, %Param ) = @_;

    # check if both parameters are given
    if ( $Param{AttributeID} && $Param{Name} ) {
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => 'Need AttributeID or Name - not both!',
        );
        return;
    }

    # check if both parameters are not given
    if ( !$Param{AttributeID} && !$Param{Name} ) {
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => 'Need AttributeID or Name - none is given!',
        );
        return;
    }

    # check if AttributeID is a number
    if ( $Param{AttributeID} && $Param{AttributeID} !~ m{ \A \d+ \z }xms ) {
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => "AttributeID must be a number! (AttributeID: $Param{AttributeID})",
        );
        return;
    }

    my $CacheKey;

    # prepare SQL statements
    if ( $Param{AttributeID} ) {

        # check cache
        $CacheKey = 'AttributeLookup::AttributeID::' . $Param{AttributeID};
        my $Cache = $Kernel::OM->Get('Kernel::System::Cache')->Get(
            Type => $Self->{CacheType},
            Key  => $CacheKey,
        );
        return $Cache if $Cache;

        return if !$Kernel::OM->Get('Kernel::System::DB')->Prepare(
            SQL   => 'SELECT name FROM condition_attribute WHERE id = ?',
            Bind  => [ \$Param{AttributeID} ],
            Limit => 1,
        );
    }
    elsif ( $Param{Name} ) {

        # check cache
        $CacheKey = 'AttributeLookup::Name::' . $Param{Name};
        my $Cache = $Kernel::OM->Get('Kernel::System::Cache')->Get(
            Type => $Self->{CacheType},
            Key  => $CacheKey,
        );
        return $Cache if $Cache;

        return if !$Kernel::OM->Get('Kernel::System::DB')->Prepare(
            SQL   => 'SELECT id FROM condition_attribute WHERE name = ?',
            Bind  => [ \$Param{Name} ],
            Limit => 1,
        );
    }

    # fetch the result
    my $Lookup = '';
    while ( my @Row = $Kernel::OM->Get('Kernel::System::DB')->FetchrowArray() ) {
        $Lookup = $Row[0];
    }

    # set cache
    $Kernel::OM->Get('Kernel::System::Cache')->Set(
        Type  => $Self->{CacheType},
        Key   => $CacheKey,
        Value => $Lookup,
        TTL   => $Self->{CacheTTL},
    );

    return $Lookup;
}

=head2 AttributeList()

Returns a list of all condition attributes as hash reference

    my $ConditionAttributesRef = $ConditionObject->AttributeList(
        UserID => 1,
    );

The returned hash reference contains entries like this:

    $ConditionAttribute{AttributeID} = 'AttributeName'

=cut

sub AttributeList {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{UserID} ) {
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => "Need UserID!",
        );
        return;
    }

    # check cache
    my $CacheKey = 'AttributeList';
    my $Cache    = $Kernel::OM->Get('Kernel::System::Cache')->Get(
        Type => $Self->{CacheType},
        Key  => $CacheKey,
    );
    return $Cache if $Cache;

    # prepare SQL statement
    return if !$Kernel::OM->Get('Kernel::System::DB')->Prepare(
        SQL => 'SELECT id, name FROM condition_attribute',
    );

    # fetch the result
    my %AttributeList;
    while ( my @Row = $Kernel::OM->Get('Kernel::System::DB')->FetchrowArray() ) {
        $AttributeList{ $Row[0] } = $Row[1];
    }

    # set cache
    $Kernel::OM->Get('Kernel::System::Cache')->Set(
        Type  => $Self->{CacheType},
        Key   => $CacheKey,
        Value => \%AttributeList,
        TTL   => $Self->{CacheTTL},
    );

    return \%AttributeList;
}

=head2 AttributeDelete()

Deletes a condition attribute.

    my $Success = $ConditionObject->AttributeDelete(
        AttributeID => 123,
        UserID      => 1,
    );

=cut

sub AttributeDelete {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(AttributeID UserID)) {
        if ( !$Param{$Argument} ) {
            $Kernel::OM->Get('Kernel::System::Log')->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    # lookup attribute name
    my $AttributeName = $Self->AttributeLookup(
        AttributeID => $Param{AttributeID},
    );

    # delete condition attribute from database
    return if !$Kernel::OM->Get('Kernel::System::DB')->Do(
        SQL => 'DELETE FROM condition_attribute '
            . 'WHERE id = ?',
        Bind => [ \$Param{AttributeID} ],
    );

    # delete cache
    for my $Key (
        'AttributeList',
        'AttributeGet::AttributeID::' . $Param{AttributeID},
        'AttributeLookup::AttributeID::' . $Param{AttributeID},
        'AttributeLookup::Name::' . $AttributeName,
        )
    {
        $Kernel::OM->Get('Kernel::System::Cache')->Delete(
            Type => $Self->{CacheType},
            Key  => $Key,
        );
    }

    return 1;
}

1;

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (L<https://otrs.org/>).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (GPL). If you
did not receive this file, see L<https://www.gnu.org/licenses/gpl-3.0.txt>.

=cut
