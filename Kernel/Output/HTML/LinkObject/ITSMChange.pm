# --
# Copyright (C) 2001-2021 OTRS AG, https://otrs.com/
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::Output::HTML::LinkObject::ITSMChange;

use strict;
use warnings;

use Kernel::Language qw(Translatable);
use Kernel::Output::HTML::Layout;
use Kernel::System::VariableCheck qw(:all);

our @ObjectDependencies = (
    'Kernel::Config',
    'Kernel::Language',
    'Kernel::System::JSON',
    'Kernel::System::Log',
    'Kernel::System::User',
    'Kernel::System::Web::Request',
);

=head1 NAME

Kernel::Output::HTML::LinkObject::ITSMChange - layout backend module

=head1 DESCRIPTION

All layout functions of link object (change)

=head2 new()

create an object

    $BackendObject = Kernel::Output::HTML::LinkObject::ITSMChange->new(
        UserLanguage => 'en',
        UserID       => 1,
    );

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # check needed objects
    for my $Needed (qw(UserLanguage UserID)) {
        $Self->{$Needed} = $Param{$Needed} || die "Got no $Needed!";
    }

    # We need our own LayoutObject instance to avoid blockdata collisions
    #   with the main page.
    $Self->{LayoutObject} = Kernel::Output::HTML::Layout->new( %{$Self} );

    # define needed variables
    $Self->{ObjectData} = {
        Object     => 'ITSMChange',
        Realname   => 'Change',
        ObjectName => 'SourceObjectID',
    };

    # get config
    $Self->{ChangeHook} = $Kernel::OM->Get('Kernel::Config')->Get('ITSMChange::Hook');

    return $Self;
}

=head2 TableCreateComplex()

return an array with the block data

Return

    @BlockData = (

        ObjectName  => 'ChangeID',
        ObjectID    => '123',

        Object    => 'ITSMChange',
        Blockname => 'Change',
        Headline  => [
            {
                Content => '',
                Width   => 20,
            },
            {
                Content => 'Change#',
                Width   => 200,
            },
            {
                Content => 'Change Title',
                Width   => 200,
            },
            {
                Content => 'Change State',
                Width   => 100,
            },
            {
                Content => 'Changed',
                Width   => 150,
            },
        ],
        ItemList => [
            [
                {
                    Type        => 'ChangeStateSignal',
                    Key         => 123,
                    Content     => 'grayled',
                    ChangeState => 'requested',
                },
                {
                    Type    => 'Link',
                    Content => '2009100112345778',
                    Link    => 'Action=AgentITSMChangeZoom;ChangeID=123',
                },
                {
                    Type      => 'Text',
                    Content   => 'Change Title',
                    MaxLength => 70,
                },
                {
                    Type      => 'Text',
                    Content   => 'requested',
                },
                {
                    Type    => 'TimeLong',
                    Content => '2008-01-01 12:12:00',
                },
            ],
            [
                {
                    Type        => 'ChangeStateSignal',
                    Key         => 456,
                    Content     => 'greenled',
                    ChangeState => 'closed',
                },
                {
                    Type    => 'Link',
                    Content => '2009100112345774',
                    Link    => 'Action=AgentITSMChangeZoom;ChangeID=456',
                },
                {
                    Type      => 'Text',
                    Content   => 'Change Title',
                    MaxLength => 70,
                },
                {
                    Type      => 'Text',
                    Content   => 'closed',
                },
                {
                    Type    => 'TimeLong',
                    Content => '2008-01-01 12:12:00',
                },
            ],
        ],
    );

    @BlockData = $LinkObject->TableCreateComplex(
        ObjectLinkListWithData => $ObjectLinkListRef,
    );

=cut

sub TableCreateComplex {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{ObjectLinkListWithData} || ref $Param{ObjectLinkListWithData} ne 'HASH' ) {
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => 'Need ObjectLinkListWithData!',
        );
        return;
    }

    # convert the list
    my %LinkList;
    for my $LinkType ( sort keys %{ $Param{ObjectLinkListWithData} } ) {

        # extract link type List
        my $LinkTypeList = $Param{ObjectLinkListWithData}->{$LinkType};

        for my $Direction ( sort keys %{$LinkTypeList} ) {

            # extract direction list
            my $DirectionList = $Param{ObjectLinkListWithData}->{$LinkType}->{$Direction};

            for my $ChangeID ( sort keys %{$DirectionList} ) {

                $LinkList{$ChangeID}->{Data} = $DirectionList->{$ChangeID};
            }
        }
    }

    my $ConfigObject = $Kernel::OM->Get('Kernel::Config');

    my $ComplexTableData = $ConfigObject->Get("LinkObject::ComplexTable");
    my $DefaultColumns;
    if (
        $ComplexTableData
        && IsHashRefWithData($ComplexTableData)
        && $ComplexTableData->{ITSMChange}
        && IsHashRefWithData( $ComplexTableData->{ITSMChange} )
        )
    {
        $DefaultColumns = $ComplexTableData->{"ITSMChange"}->{"DefaultColumns"};
    }

    my @TimeLongTypes = (
        'CreateTime',
        'ChangeTime',
        'PlannedStartTime',
        'PlannedEndTime',
        'ActualStartTime',
        'ActualEndTime',
        'RequestedTime',
    );

    my @TranslateTypes = (
        'Category',
        'Impact',
        'Priority',
    );

    # always show the change state flag and the change number
    my @Headline = (
        {
            Content => 'ChangeState',
        },
        {
            Content => $Self->{ChangeHook},
        },
    );

    my $UserObject = $Kernel::OM->Get('Kernel::System::User');

    # Load user preferences.
    my %Preferences = $UserObject->GetPreferences(
        UserID => $Self->{UserID},
    );

    if ( !$DefaultColumns || !IsHashRefWithData($DefaultColumns) ) {
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => 'Missing configuration for LinkObject::ComplexTable###ITSMChange!',
        );
        return;
    }

    # Get default column priority from SysConfig.
    # Each column in table (Title, State,...) has defined Priority in SysConfig. System use this
    #   priority to sort columns, if user doesn't have own settings.
    my %SortOrder;
    if (
        $ComplexTableData->{"ITSMChange"}->{"Priority"}
        && IsHashRefWithData( $ComplexTableData->{"ITSMChange"}->{"Priority"} )
        )
    {
        %SortOrder = %{ $ComplexTableData->{"ITSMChange"}->{"Priority"} };
    }

    my %UserColumns = %{$DefaultColumns};

    if ( $Preferences{'LinkObject::ComplexTable-ITSMChange'} ) {

        my $ColumnsEnabled = $Kernel::OM->Get('Kernel::System::JSON')->Decode(
            Data => $Preferences{'LinkObject::ComplexTable-ITSMChange'},
        );

        if (
            $ColumnsEnabled
            && IsHashRefWithData($ColumnsEnabled)
            && $ColumnsEnabled->{Order}
            && IsArrayRefWithData( $ColumnsEnabled->{Order} )
            )
        {
            # Clear sort order.
            %SortOrder = ();

            DEFAULTCOLUMN:
            for my $DefaultColumn ( sort keys %UserColumns ) {
                my $Index = 0;

                for my $UserSetting ( @{ $ColumnsEnabled->{Order} } ) {
                    $Index++;
                    if ( $DefaultColumn eq $UserSetting ) {
                        $UserColumns{$DefaultColumn} = 2;
                        $SortOrder{$DefaultColumn}   = $Index;

                        next DEFAULTCOLUMN;
                    }
                }

                # Not found, means user chose to hide this item.
                if ( $UserColumns{$DefaultColumn} == 2 ) {
                    $UserColumns{$DefaultColumn} = 1;
                }

                if ( !$SortOrder{$DefaultColumn} ) {
                    $SortOrder{$DefaultColumn} = 0;    # Set 0, it system will hide this item anyways
                }
            }
        }
    }
    else {

        # User has no own settings.
        for my $Column ( sort keys %UserColumns ) {
            if ( !$SortOrder{$Column} ) {
                $SortOrder{$Column} = 0;               # Set 0, it system will hide this item anyways
            }
        }
    }

    # Define Headline columns.
    my @AllColumns;
    COLUMN:
    for my $Column ( sort { $SortOrder{$a} <=> $SortOrder{$b} } keys %UserColumns ) {

        my $ColumnTranslate = $Column;
        if ( $Column eq 'CreateTime' ) {
            $ColumnTranslate = Translatable('Created');
        }
        elsif ( $Column eq 'ChangeTime' ) {
            $ColumnTranslate = Translatable('Changed');
        }

        push @AllColumns, {
            ColumnName      => $Column,
            ColumnTranslate => $ColumnTranslate,
        };

        # if enabled by default.
        if ( $UserColumns{$Column} == 2 ) {
            push @Headline, {
                Content => $ColumnTranslate,
            };
        }
    }

    # create the item list, sort by ChangeID Down
    my @ItemList;
    for my $ChangeID (
        sort {
            $LinkList{$b}{Data}->{ChangeID} <=> $LinkList{$a}{Data}->{ChangeID}
        } keys %LinkList
        )
    {

        # extract change data
        my $Change = $LinkList{$ChangeID}->{Data};

        my @ItemColumns = (
            {
                Type        => 'ChangeStateSignal',
                Key         => $ChangeID,
                Content     => $Change->{ChangeStateSignal},
                ChangeState => $Change->{ChangeState},
            },
            {
                Type    => 'Link',
                Content => $Change->{ChangeNumber},
                Link    => $Self->{LayoutObject}->{Baselink}
                    . 'Action=AgentITSMChangeZoom;ChangeID='
                    . $ChangeID,
                Title => "Change# $Change->{ChangeNumber}: $Change->{ChangeTitle}",
            },
        );

        COLUMN:
        for my $Column ( sort { $SortOrder{$a} <=> $SortOrder{$b} } keys %UserColumns ) {

            # if enabled by default
            if ( $UserColumns{$Column} == 2 ) {

                my %Hash;
                if ( grep { $_ eq $Column } @TimeLongTypes ) {
                    $Hash{'Type'} = 'TimeLong';
                }
                else {
                    $Hash{'Type'} = 'Text';
                }

                if ( grep { $_ eq $Column } @TranslateTypes ) {
                    $Hash{'Translate'} = 1;
                }

                $Hash{'Content'} = $Change->{$Column};

                push @ItemColumns, \%Hash;
            }
        }

        push @ItemList, \@ItemColumns;
    }

    return if !@ItemList;

    # Define the block data.
    my %Block = (
        Object     => $Self->{ObjectData}->{Object},
        Blockname  => $Self->{ObjectData}->{Object},
        ObjectName => $Self->{ObjectData}->{ObjectName},
        ObjectID   => $Param{ObjectID},
        Headline   => \@Headline,
        ItemList   => \@ItemList,
        AllColumns => \@AllColumns,
    );

    return ( \%Block );

}

=head2 TableCreateSimple()

return a hash with the link output data

Return

    %LinkOutputData = (
        Normal::Source => {
            ITSMChange => [
                {
                    Type    => 'Link',
                    Content => 'CH:2009100112354321-1',
                    Title   => 'Change# 2009101610005402: The Change Title',
                    Css     => 'style="text-decoration: line-through"',
                },
                {
                    Type    => 'Link',
                    Content => 'CH:2009100112354321-6',
                    Title   => 'Change# 2009101610007634: The Change Title',
                },
            ],
        },
        ParentChild::Target => {
            ITSMChange => [
                {
                    Type    => 'Link',
                    Content => 'CH:2009100112354321-3',
                    Title   => 'Change# 20091016100044331: The Change Title',
                },
            ],
        },
    );

    %LinkOutputData = $LinkObject->TableCreateSimple(
        ObjectLinkListWithData => $ObjectLinkListRef,
    );

=cut

sub TableCreateSimple {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{ObjectLinkListWithData} || ref $Param{ObjectLinkListWithData} ne 'HASH' ) {
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => 'Need ObjectLinkListWithData!',
        );
        return;
    }

    my %LinkOutputData;
    for my $LinkType ( sort keys %{ $Param{ObjectLinkListWithData} } ) {

        # extract link type List
        my $LinkTypeList = $Param{ObjectLinkListWithData}->{$LinkType};

        for my $Direction ( sort keys %{$LinkTypeList} ) {

            # extract direction list
            my $DirectionList = $Param{ObjectLinkListWithData}->{$LinkType}->{$Direction};

            # create the item list, sort by ChangeID Down
            my @ItemList;
            for my $ChangeID (
                sort {
                    $DirectionList->{$b}->{ChangeID} <=> $DirectionList->{$a}->{ChangeID}
                } keys %{$DirectionList}
                )
            {

                # extract change data
                my $Change = $DirectionList->{$ChangeID};

                # define item data
                my %Item = (
                    Type    => 'Link',
                    Content => 'CH:' . $Change->{ChangeNumber},
                    Title =>
                        "$Self->{ChangeHook} $Change->{ChangeNumber}: $Change->{ChangeTitle}",
                    Link => $Self->{LayoutObject}->{Baselink}
                        . 'Action=AgentITSMChangeZoom;ChangeID='
                        . $ChangeID,
                    MaxLength => 20,
                );

                push @ItemList, \%Item;
            }

            # add item list to link output data
            $LinkOutputData{ $LinkType . '::' . $Direction }->{ITSMChange} = \@ItemList;
        }
    }

    return %LinkOutputData;
}

=head2 ContentStringCreate()

return a output string

    my $String = $LayoutObject->ContentStringCreate(
        ContentData => $HashRef,
    );

=cut

sub ContentStringCreate {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{ContentData} ) {
        $Kernel::OM->Get('Kernel::System::Log')->Log(
            Priority => 'error',
            Message  => 'Need ContentData!',
        );
        return;
    }

    # extract content
    my $Content = $Param{ContentData};

    return if $Content->{Type} ne 'ChangeStateSignal';

    # build html for signal LED
    my $String = $Self->{LayoutObject}->Output(
        Template => '<div class="Flag Small" title="[% Data.ChangeState | html %]"> '
            . '<span class="[% Data.ChangeStateSignal | html %]"></span> </div>',
        Data => {
            ChangeStateSignal => $Content->{Content},
            ChangeState       => $Content->{ChangeState} || '',
        },
    );

    return $String;
}

=head2 SelectableObjectList()

return an array hash with C<selectable> objects

Return

    @SelectableObjectList = (
        {
            Key   => 'ITSMChange',
            Value => 'Change',
        },
    );

    @SelectableObjectList = $LinkObject->SelectableObjectList(
        Selected => $Identifier,  # (optional)
    );

=cut

sub SelectableObjectList {
    my ( $Self, %Param ) = @_;

    my $Selected;
    if ( $Param{Selected} && $Param{Selected} eq $Self->{ObjectData}->{Object} ) {
        $Selected = 1;
    }

    # object select list
    my @ObjectSelectList = (
        {
            Key => $Self->{ObjectData}->{Object},

            # also use the object here and not the real name, for translation issues
            Value => $Self->{ObjectData}->{Object},

            Selected => $Selected,
        },
    );

    return @ObjectSelectList;
}

=head2 SearchOptionList()

return an array hash with search options

Return

    @SearchOptionList = (
        {
            Key       => 'ChangeNumber',
            Name      => 'Change#',
            InputStrg => $FormString,
            FormData  => '12',
        },
        {
            Key       => 'ChangeTitle',
            Name      => 'Change Title',
            InputStrg => $FormString,
            FormData  => 'MailServer needs update',
        },
        {
            Key       => 'WorkOrderTitle',
            Name      => 'Workorder Title',
            InputStrg => $FormString,
            FormData  => 'Shutdown old mail server',
        },
    );

    @SearchOptionList = $LinkObject->SearchOptionList();

=cut

sub SearchOptionList {
    my ( $Self, %Param ) = @_;

    # search option list
    my @SearchOptionList = (
        {
            Key  => 'ChangeNumber',
            Name => $Self->{ChangeHook},
            Type => 'Text',
        },
        {
            Key  => 'ChangeTitle',
            Name => 'ChangeTitle',
            Type => 'Text',
        },
        {
            Key  => 'WorkOrderTitle',
            Name => 'WorkOrderTitle',
            Type => 'Text',
        },
    );

    # add formkey
    for my $Row (@SearchOptionList) {
        $Row->{FormKey} = 'SEARCH::' . $Row->{Key};
    }

    # add form data and input string
    ROW:
    for my $Row (@SearchOptionList) {

        # get form data
        $Row->{FormData} = $Kernel::OM->Get('Kernel::System::Web::Request')->GetParam(
            Param => $Row->{FormKey},
        );

        # parse the input text block
        $Self->{LayoutObject}->Block(
            Name => 'InputText',
            Data => {
                Key   => $Row->{FormKey},
                Value => $Row->{FormData} || '',
            },
        );

        # add the input string
        $Row->{InputStrg} = $Self->{LayoutObject}->Output(
            TemplateFile => 'LinkObject',
        );

        next ROW;
    }

    return @SearchOptionList;
}

1;

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (L<https://otrs.org/>).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (GPL). If you
did not receive this file, see L<https://www.gnu.org/licenses/gpl-3.0.txt>.

=cut
