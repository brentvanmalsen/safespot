import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {},
              iconSize: 45,
              color: Colors.orange,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFEFEFF0),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Zoek naar groepen of bewoners...',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
              iconSize: 32,
              color: Colors.orange,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 115,
                margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 5), // Toegevoegd horizontale marge
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Veiligheid',
                    style: TextStyle(
                      fontWeight:
                          FontWeight.w500, // Gewijzigd naar FontWeight.w500
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 115,
                margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 5), // Toegevoegd horizontale marge
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Sociaal',
                    style: TextStyle(
                      fontWeight:
                          FontWeight.w500, // Gewijzigd naar FontWeight.w500
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 115,
                margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 5), // Toegevoegd horizontale marge
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Evenementen',
                    style: TextStyle(
                      fontWeight:
                          FontWeight.w500, // Gewijzigd naar FontWeight.w500
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
              height:
                  2), // Extra ruimte toegevoegd tussen de rij en de rest van de content
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              children: [
                Container(
                  width: double.infinity,
                  height: 87,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F5F6),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 106,
                        height: 87,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                          ),
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/inbraak.png'), // Gebruik AssetImage voor afbeeldingen uit de assets
                            fit: BoxFit.cover, // Behoud hetzelfde fit-type
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Poging tot inbraak',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 5),
                              SizedBox(height: 5),
                              Text(
                                'Eva de Boer: Zaterdagnacht om 04:00 waren er 2 mannen...',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Color(0xFFF68B1E),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 1),
                          Text(
                            '21-04-2024',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
