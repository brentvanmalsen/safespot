import 'package:flutter/material.dart';

class MeldingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox.shrink(), // Titel verwijderd
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(Icons.close, size: 50), // Grootte aangepast
            onPressed: () {
              // Voeg hier code toe om acties uit te voeren wanneer de knop wordt ingedrukt
            },
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.only(
            top: 20.0,
            left: 20.0), // Ruimte bovenaan toegevoegd en naar links uitgelijnd
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Uitlijning gewijzigd naar links
          children: [
            Text(
              'Melding maken',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
