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
	
	# change Text in Phone Ticket 
	if ($Param{TemplateFile} =~/^AgentTicketPhone/){
       ${ $Param{Data} } =~ s{
        (\$Text\{"Create\sNew\sPhone\sTicket"\})
       }
       { \$Text{"Create new ticket"}
    }sxmg;
    }
	
	# no show service DF 
	if ($Param{TemplateFile} =~/^CustomerTicketMessage/){
       ${ $Param{Data} } =~ s{
        (ServiceName"\sstyle="display:\sblock\;")
       }
       { ServiceName" style="display: none;"
    }sxmg;
    }
	# return if it's CustomerFAQExplorer
#    return if $Param{TemplateFile} !~ /^(CustomerFAQExplorer|AgentFAQExplorer|PublicFAQExplorer)/;
	
	# no subcategories or articles in FAQ 
#	if (${$Param{Data}} =~ /s{(No\ssubcategories\sfound.)}/) {
#		${ $Param{Data} } =~ s{
#			(class="WidgetSimple"\sid="Subcategories")
#		   }
#		   { class="WidgetSimple Hidden" id="Subcategories"
#		}sxmg;
#    }

return $Param{Data};
}
	1;
