
package Kernel::Language::de_UniRZ_Skin;

use strict;
use warnings;

sub Data {
    my $Self = shift;

    $Self->{Translation}->{'New ticket'} = 'Neues Ticket';
    $Self->{Translation}->{'Create new ticket'} = 'Neues Ticket erstellen';
    $Self->{Translation}->{'customer'} = 'Nutzer'; 
	$Self->{Translation}->{'Customer Information'} = 'Nutzer Information';
	$Self->{Translation}->{'open'} = 'in Bearbeitung';
}

1;
