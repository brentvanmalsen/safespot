import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class KaartPage extends StatelessWidget {
  final String location;

  // Constructor om de locatie te ontvangen
  KaartPage({required this.location});

  @override
  Widget build(BuildContext context) {
    // Coördinaten omzetten naar decimale graden
    double latitude = 51.4506667;
    double longitude = 5.4559722;

    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(latitude, longitude), // Coördinaten van de locatie
          zoom: 15.0,
        ),
        markers: {
          Marker(
            markerId: MarkerId('Marker'),
            position: LatLng(latitude, longitude), // Coördinaten van de locatie
            infoWindow: InfoWindow(title: 'Location'),
          ),
        },
      ),
    );
  }
}
