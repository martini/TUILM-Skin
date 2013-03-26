
// Variable für alle Case
var liste_alle_LabelDynamicField = ([
		//E-mail
		'LabelDynamicField_EmailClient', 'LabelDynamicField_EmailNetzzugang', 'LabelDynamicField_EmailServername', 'LabelDynamicField_EmailPort',
		'LabelDynamicField_EmailSicherheit', 'LabelDynamicField_EmailWebmail', 'LabelDynamicField_EmailVomTracking', 
		'LabelDynamicField_EmailAnTracking', 
		//moodle
		'LabelDynamicField_MoodleZugang',
		//Thoska+
		'LabelDynamicField_ThoskaGeraete', 'LabelDynamicField_ThoskaWoVA', 'LabelDynamicField_ThoskaWoASC', 'LabelDynamicField_ThoskaWoGeld',
		'LabelDynamicField_ThoskaSperen', 'LabelDynamicField_ThoskaEntsperren', 'LabelDynamicField_ThoskaZweikarte', 'LabelDynamicField_ThoskaMatrNr',
		'LabelDynamicField_ThoskaKartenNr', 'LabelDynamicField_ThoskaPersonalNr', 'LabelDynamicField_ThoskaGebPflicht', 'LabelDynamicField_Thoskakryto',
		'LabelDynamicField_ThoskaZertifikat', 'LabelDynamicField_ThoskaMail', 'LabelDynamicField_ThoskaFunk', 'LabelDynamicField_ThoskaTrw',
		'LabelDynamicField_ThoskaBertrag', 'LabelDynamicField_ThoskaDefekt', 'LabelDynamicField_ThoskaTDGrund',
		// Datum
		'LabelDynamicField_DatumPastUsed', 'LabelDynamicField_UhrzeitDatumPastUsed', 'LabelDynamicField_GeburtsdatumUsed']);
var liste_alle_Text_DynamicFields = ([
		//E-mail
		'DynamicField_EmailServername', 'DynamicField_EmailPort', 'DynamicField_EmailSicherheit', 'DynamicField_EmailVomTracking', 
		'DynamicField_EmailAnTracking', 
		//Thoska+
		'DynamicField_ThoskaMatrNr', 'DynamicField_ThoskaKartenNr', 'DynamicField_ThoskaPersonalNr', 'DynamicField_ThoskaEntsperren']);
var liste_alle_Select_DynamicField = ([
		//E-Mail
		'DynamicField_EmailClient', 'DynamicField_EmailNetzzugang', 'DynamicField_EmailWebmail',
		//moodle
		'DynamicField_MoodleZugang',  
		//Thoska+
		'DynamicField_ThoskaGebPflicht', 'DynamicField_ThoskaTDGrund', 'DynamicField_ThoskaGeraete', 'DynamicField_ThoskaWoVA',
		'DynamicField_ThoskaWoASC', 'DynamicField_ThoskaWoGeld', 'DynamicField_ThoskaSperen', 'DynamicField_ThoskaZweikarte', 'DynamicField_ThoskaTDGrund']);
var liste_alle_checkBox = ([ 
		//Thoska+
		'DynamicField_Thoskakryto', 'DynamicField_ThoskaZertifikat', 'DynamicField_ThoskaMail', 'DynamicField_ThoskaFunk',
		'DynamicField_ThoskaTrw', 'DynamicField_ThoskaBertrag', 'DynamicField_ThoskaDefekt']);
var liste_alle_Datum = (['DynamicField_DatumPastUsed', 'DynamicField_UhrzeitDatumPastUsed', 'DynamicField_GeburtsdatumUsed']);

// hier werde die unnoetigen Felder eines Case zurückgesetzt		
function Zuruecksetzen_Text_DynamicFields() {	
	for (var i = 0; i < liste_alle_Text_DynamicFields.length; i++) 
		document.getElementById(liste_alle_Text_DynamicFields[i]).value = '';
}	
// hier werde die Select-DynamicField zurückgesetzt	
function Zuruecksetzen_Select_DynamicFields() {
	for (var i = 0; i < liste_alle_Select_DynamicField.length; i++)
		document.getElementById(liste_alle_Select_DynamicField[i]).options[0].selected = true;
}
// hier werde die Datum-DynamicField zurückgesetzt	
function Zuruecksetzen_Datum_DynamicFields() {	
	for (var i = 0; i < liste_alle_Datum.length; i++)
		document.getElementById(liste_alle_Datum[i]).checked = false;
}
// hier werde die unnötigen Felder eines "case" versteckt bis auf "labelDynamicField"
function Verstecken() {
	for (var i = 0; i < liste_alle_LabelDynamicField.length; i++)
		document.getElementById(liste_alle_LabelDynamicField[i]).parentNode.style.display= 'none';
}
// hier werde die  Felder eines "case" angezeigt 
function Anzeigen_DynamicField(liste_DynamicField) {
	for (var i = 0; i < liste_DynamicField.length; i++)
		document.getElementById(liste_DynamicField[i]).parentNode.style.display= 'block';
}
function Anzeigen(liste) {
	Verstecken();
	Zuruecksetzen_Select_DynamicFields();
	Zuruecksetzen_Text_DynamicFields();
	Zuruecksetzen_Datum_DynamicFields();
	Anzeigen_DynamicField(liste);
}	
function Ohne_Anzeige() {
	Verstecken();
	Zuruecksetzen_Select_DynamicFields();
	Zuruecksetzen_Text_DynamicFields();
	Zuruecksetzen_Datum_DynamicFields();
}	
// ein Service auswählen
function TUILM_Service_Auswahl(){
	switch ($('#ServiceID').val() ) { 
		// ---------------- Kategorie Email ------------- 	
		case "32": 
			// Probleme beim senden
			var liste_Anzeigen_DynamicField = (['LabelDynamicField_EmailClient', 'LabelDynamicField_EmailNetzzugang', 'LabelDynamicField_EmailServername', 
			'LabelDynamicField_EmailPort', 'LabelDynamicField_EmailSicherheit']);
			Anzeigen(liste_Anzeigen_DynamicField);
			break;
		case "12": 
			// Probleme beim Empfangen
			var liste_Anzeigen_DynamicField = (['LabelDynamicField_EmailClient', 'LabelDynamicField_EmailServername', 
			'LabelDynamicField_EmailPort', 'LabelDynamicField_EmailSicherheit']);
			Anzeigen(liste_Anzeigen_DynamicField);
			break;				
		case "33":
			// Probleme mit Webmail
			var liste_Anzeigen_DynamicField = (['LabelDynamicField_EmailWebmail']);
			Anzeigen(liste_Anzeigen_DynamicField);
			break;		
		case "35": 	
			// gelöschte Emails wiederherstellen
			var liste_Anzeigen_DynamicField = (['LabelDynamicField_UhrzeitDatumPastUsed']);
			Anzeigen(liste_Anzeigen_DynamicField);
			break;		
		case "36": 		
			// verlorene Emails
			var liste_Anzeigen_DynamicField = (['LabelDynamicField_UhrzeitDatumPastUsed', 'LabelDynamicField_EmailVomTracking', 'LabelDynamicField_EmailAnTracking']);
			Anzeigen(liste_Anzeigen_DynamicField);
			break;		
		// ---------------- Kategorie moodle -------------
		case "46":
			// Probleme beim Zugang zum moodle		
			var liste_Anzeigen_DynamicField = (['LabelDynamicField_MoodleZugang']);
			Anzeigen(liste_Anzeigen_DynamicField);
			break;	
		// ---------------- Kategorie Thoska -------------
		case "55":  	
			// ASC Terminal
			var liste_Anzeigen_DynamicField = (['LabelDynamicField_ThoskaWoASC', 'LabelDynamicField_DatumPastUsed']);
			Anzeigen(liste_Anzeigen_DynamicField);
			break;
		case "56":  	
			// Geldaufladen Automat
			var liste_Anzeigen_DynamicField = (['LabelDynamicField_ThoskaWoGeld', 'LabelDynamicField_DatumPastUsed']);
			Anzeigen(liste_Anzeigen_DynamicField);
			break;
		case "54":  	
			// Validierungsautomat
			var liste_Anzeigen_DynamicField = (['LabelDynamicField_ThoskaWoVA', 'LabelDynamicField_DatumPastUsed']);
			Anzeigen(liste_Anzeigen_DynamicField);
			break;
		case "8":  
			// Chipseriennummer und Druckkontonummer
			var liste_Anzeigen_DynamicField = (['LabelDynamicField_ThoskaEntsperren', 'LabelDynamicField_Thoskakryto', 'LabelDynamicField_ThoskaZertifikat',
			'LabelDynamicField_ThoskaMail', 'LabelDynamicField_ThoskaFunk', 'LabelDynamicField_ThoskaTrw', 'LabelDynamicField_ThoskaBertrag',
			'LabelDynamicField_ThoskaDefekt']);
			Anzeigen(liste_Anzeigen_DynamicField);
			break;	
		case "39":  
			// Mechanische Beschädigung
			var liste_Anzeigen_DynamicField = (['LabelDynamicField_ThoskaPersonalNr', 'LabelDynamicField_ThoskaMatrNr', 'LabelDynamicField_ThoskaGebPflicht', 
			'LabelDynamicField_ThoskaKartenNr', 'LabelDynamicField_ThoskaSperen', 'LabelDynamicField_Thoskakryto', 'LabelDynamicField_ThoskaZertifikat',
			'LabelDynamicField_ThoskaMail', 'LabelDynamicField_ThoskaFunk', 'LabelDynamicField_ThoskaTrw', 'LabelDynamicField_ThoskaBertrag',
			'LabelDynamicField_ThoskaDefekt']);
			Anzeigen(liste_Anzeigen_DynamicField);
			break;	
			
		// ---------------- default -------------
		default: 	
			Ohne_Anzeige();
			break;
		}   
}
 