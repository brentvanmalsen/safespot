import 'package:flutter/material.dart';

class MeldingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 75,
            left: 17.5,
            child: IconButton(
              icon: Icon(Icons.close, size: 40),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            top: 129,
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
                const SizedBox(height: 5),
                Container(
                  width: MediaQuery.of(context).size.width - 60,
                  child: const Text(
                    'Volg deze richtlijnen bij het aanmaken van een melding.',
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, left: 18.0, right: 10.0, bottom: 75.0),
                      child: Image.asset(
                        'assets/images/weesspecifiek.png',
                        height: 40,
                        width: 40,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Wees specifiek',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          width: 220,
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, left: 18.0, right: 10.0, bottom: 115.0),
                      child: Image.asset(
                        'assets/images/aantalmeldingen.png',
                        height: 40,
                        width: 40,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Aantal meldingen',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          width: 220,
                          child: const Text(
                            'Probeer om niet meer dan 3 meldingen per dag te maken. Op die manier kunnen we ervoor zorgen dat alle meldingen de aandacht krijgen die ze verdienen.',
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, left: 18.0, right: 10.0, bottom: 80.0),
                      child: Image.asset(
                        'assets/images/voorkomprofileren.png',
                        height: 40,
                        width: 40,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Voorkom profileren',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          width: 220,
                          child: const Text(
                            'Wees bewust van mogelijke vooroordelen, voorkom het benadrukken van kenmerken zoals ras, geslacht, of leeftijd.',
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
