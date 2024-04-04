import 'package:flutter/material.dart';

class MeldingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 75,
            left: 17.5, // Aangepast
            child: IconButton(
              icon: Icon(Icons.close, size: 40),
              onPressed: () {
                // Voeg hier code toe om acties uit te voeren wanneer de knop wordt ingedrukt
              },
            ),
          ),
          Positioned(
            top: 129, // Aangepast
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Melding maken',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
                const SizedBox(
                    height: 5), // Extra ruimte toegevoegd tussen de teksten
                Container(
                  width: MediaQuery.of(context).size.width - 60,
                  // Breedte van de tekstcontainer ingesteld op scherm breedte - 60 (30 aan beide zijden)
                  child: const Text(
                    'Volg deze richtlijnen bij het aanmaken van een melding.',
                    
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                const SizedBox(
                    height:
                        20), // Extra ruimte toegevoegd voor de afbeelding en tekst
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/weesspecifiek.png',
                      height: 50,
                      width: 50,
                    ),
                    const SizedBox(
                        width: 10), // Ruimte tussen afbeelding en tekst
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Wees specifiek',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        const SizedBox(
                            height: 5), // Extra ruimte tussen de tekstregels
                        Container(
                          width: MediaQuery.of(context).size.width -
                              60, // Breedte aangepast naar scherm breedte - 60 (30 aan beide zijden)
                          child: const Text(
                            'Zorg ervoor dat elke melding zo gedetailleerd mogelijk is zodat buurtbewoners snel en effectief kunnen reageren.',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
