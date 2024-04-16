# SafeSpot App

De SafeSpot app is een Flutter applicatie waarmee gebruikers meldingenn kunnen maken binnen hun buurt om andere te informeren over mogelijke gevaren, hulpbehoeftes, of activiteiten.

## Installatie

1. **Clone de repository naar je machine:**
   git clone [https://git.fhict.nl/I507960/duo-case-27-community-safety.git]

2. **Open het project:**
   Open het project in een IDE, zoals VS Code, Xcode, of Android Studio.

3. **Installeer dependencies:**
   Zorg ervoor dat je de benodigde dependencies hebt geïntsalleerd door het volgende commando uit te voeren in de terminal: `flutter pub get`
   
4. **Run de app:**
   Nadat alle dependencies up-to-date zijn kun je de app runnen (uitvoeren) op een simulator of fysiek apparaat, zowel Android als IOS 

## Pubspec.yaml

- flutter_local_notifications: Voor het weergeven van pushmeldingen.  
- image_picker: Om afbeeldingen te kunnen selecteren uit de galerij.  
- google_maps_flutter: Voor het gebruiken van de Google Maps functionaliteit.   
- flutter_launcher_icons: Om aangepaste app iconen te gebruiken. 

## Functionaliteiten

- Beeldmateriaal toevoegen: Bij het maken van een melding kunnen gebruikers een foto uit de galerij uploaden die vervolgens in en preview in de app komt te staan.  
- Pushmeldingen: Die ingevoerde tekst bij het aanmaken van een melding worden getoond in een pushmelding.  
- Locatie bekijken: Op de overzichtpagina kan de opgegeven locatie bekeken worden.  

## Bestandsstructuur

- `main.dart`: Dit is het hoofdbestand van de app waarin het navigatiemenu is ingesteld.   
- `chat.dart`: Deze pagina bevat de functionaliteit voor het bekijken van chatberichten en interactie met andere gebruikers.   
- `melding.dart`: Hier worden de richtlijnen voor het aanmaken van een melding weergegeven.     
- `beschrijving.dart`: Dit is de pagina waar gebruikers meldingen kunnen maken door informatie en eventueel beeldmateriaal toe te voegen.
- `notifi_service.dart`: Dit is de class voor het verzenden van een pushmelding.  
- `overzicht.dart`: Deze pagina is het overzicht van alle meldingen die zijn gemaakt binnen de app.  
- `kaart.dart`: Hier wordt de kaartfunctionaliteit geïmplementeerd, waarmee gebruikers meldingen kunnen bekijken op de kaart.

## Wat is nog niet compleet?

- Een accountfunctie voor verschillende profielen in de app.
- De zoekfuncties
- De 'instellingen' pagina
- De 'locatie delen' sectie

## Gemaakt door

README: Brent van Malsen.  
SafeSpot app: Brent van Malsen & Jorg van de Rijdt


