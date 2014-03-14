
package Kernel::Language::de_UniRZ_Skin;

use strict;
use warnings;

sub Data {
    my $Self = shift;

    $Self->{Translation}->{'New ticket'} = 'Neues Ticket';
    $Self->{Translation}->{'Create new ticket'} = 'Neues Ticket erstellen';
    $Self->{Translation}->{'customer'} = 'Nutzer'; 
    $Self->{Translation}->{'Customer Information'} = 'Nutzer Information';
    $Self->{Translation}->{'Please click the button below to create your first ticket.'} = 'Bitte verwenden Sie den Button unten zur Erstellung Ihres ersten Tickets.',
    $Self->{Translation}->{'Ticket number'} = 'Ticketnummer';
    $Self->{Translation}->{'Ticket search'} = 'Ticket Suche'; 
    $Self->{Translation}->{'Fulltext'} = 'Volltextsuche';
    $Self->{Translation}->{'FAQ search'} = 'FAQ Suche';
    $Self->{Translation}->{'FAQ number'} = 'FAQ Nummer';
    $Self->{Translation}->{'Queue'} = 'Gruppe';
    $Self->{Translation}->{'open'} = 'in Bearbeitung';
    $Self->{Translation}->{'technical solved'} = 'Technisch gelöst';
}

1;
