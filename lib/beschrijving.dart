import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class BeschrijvingPage extends StatefulWidget {
  @override
  _BeschrijvingPageState createState() => _BeschrijvingPageState();
}

class _BeschrijvingPageState extends State<BeschrijvingPage> {
  File? _selectedImgae;

  Future<void> _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (returnedImage != null) {
      setState(() {
        _selectedImgae = File(returnedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  const TextField(
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
                  const SizedBox(height: 16),
                  const TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      labelText: 'Wat is er gebeurd?',
                      labelStyle: TextStyle(color: Colors.grey),
                      // Aanpassen van de randkleur naar oranje
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFF68B1E)),
                      ),
                      filled: true,
                      fillColor: Color(0xFFF5F5F6),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      MaterialButton(
                        color: Color(0xFFF68B1E),
                        child: const Text(
                          "Bestand uploaden",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        onPressed: _pickImageFromGallery,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      if (_selectedImgae != null)
                        Image.file(_selectedImgae!)
                      else
                        const Text("Tekst")
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(right: 16),
        width: 130,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFF68B1E),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          child: const Text('Plaatsen'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
