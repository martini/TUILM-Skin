# --
# Kernel/Output/HTML/OutputFilterDisableNotNeededText.pm
# Copyright (C) 2013 Znuny GmbH, http://znuny.com/
# --

package Kernel::Output::HTML::OutputFilterDisableNotNeededText;

use strict;
use warnings;

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = \%Param;
    bless( $Self, $Type );

    return $Self;
}

sub Run {
    my ( $Self, %Param ) = @_;

    # check needed objects (needed to be done here because of OTRS 3.0 + Survey package ->
    # public.pl?Action=PublicSurvey -> Got no DBObject! at)
    for (qw(DBObject EncodeObject TimeObject ConfigObject LogObject MainObject LayoutObject)) {
        return if !$Self->{$_};
    }

    # check needed stuff
    if ( !defined $Param{Data} ) {
        $Self->{LogObject}->Log( Priority => 'error', Message => 'Need Data!' );
        $Self->{LayoutObject}->FatalDie();
    }
	
	 # change word Kundenkontakt 
	if ($Param{TemplateFile} =~/^AgentTicketPhone/){
       ${ $Param{Data} } =~ s{
        (\$Text\{"From\scustomer"\})
       }
       { \$Text{"customer"}
    }sxmg;
    }
return $Param{Data};
}
	1;
