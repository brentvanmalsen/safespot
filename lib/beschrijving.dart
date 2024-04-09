import 'package:flutter/material.dart';

class BeschrijvingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
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
          Padding(
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
                SizedBox(height: 16),
                TextField(
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
                SizedBox(height: 16),
                TextField(
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
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(right: 16),
        width: 130,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFF68B1E),
            foregroundColor: Colors.white,
            textStyle: TextStyle(
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
