import 'package:flutter/material.dart';
import 'package:flutter_application_dc27/notifi_service.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class BeschrijvingPage extends StatefulWidget {
  @override
  _BeschrijvingPageState createState() => _BeschrijvingPageState();
}

class _BeschrijvingPageState extends State<BeschrijvingPage> {
  File? _selectedImage;

  Future<void> _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (returnedImage != null) {
      setState(() {
        _selectedImage = File(returnedImage.path);
      });
    }
  }

  void _navigateBackToPreviousPage() {
    // Navigeer terug naar de vorige pagina (chat.dart)
    Navigator.pop(context);
    // Navigeer terug naar de pagina daarvoor (bijvoorbeeld home.dart)
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: const EdgeInsets.only(left: 32, top: 45, right: 32),
              child: Text(
                'Beschrijving',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 16),
                child: Text(
                  'Beschrijf hier alle relevante details om de situatie zo duidelijk mogelijk te beschrijven. Hoe meer informatie je kunt geven, zoals tijdstippen en betrokken personen, hoe beter de gemeenschap kan reageren op de melding.',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Onderwerp',
                  labelStyle: TextStyle(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFF68B1E)),
                  ),
                  filled: true,
                  fillColor: Color(0xFFF5F5F6),
                ),
              ),
            ),
            SizedBox(height: 16),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  labelText: 'Wat is er gebeurd?',
                  labelStyle: TextStyle(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFF68B1E)),
                  ),
                  filled: true,
                  fillColor: Color(0xFFF5F5F6),
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                children: [
                  MaterialButton(
                    color: Color(0xFFF68B1E),
                    onPressed: _pickImageFromGallery,
                    child: const Text(
                      "Bestand uploaden",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  if (_selectedImage == null)
                    const Row(
                      children: [
                        Icon(Icons.camera_alt),
                        SizedBox(width: 10),
                        Icon(Icons.videocam),
                      ],
                    ),
                ],
              ),
            ),
            if (_selectedImage != null)
              Padding(
                padding: const EdgeInsets.only(
                    left: 32, top: 32, right: 32, bottom: 0),
                child: Image.file(_selectedImage!),
              ),
            const Padding(
              padding: const EdgeInsets.only(left: 32, top: 45, right: 32),
              child: Text(
                'Locatie delen',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 16),
                child: Text(
                  'Kies ervoor om een locatie toe te voegen die relevant is aan de informatie van je melding. Dit helpt andere buurtbewoners om  een beter beeld te krijgen van mogelijke gevaren of hulpbehoeftes in de omgeving.',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(right: 16),
        width: 130,
        child: ElevatedButton(
            onPressed: (){
              NotificationService().showNotification(title: 'Test', body: 'Test');
              _navigateBackToPreviousPage();
            },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFF68B1E),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          child: Text('Plaatsen'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
