import 'package:flutter/material.dart';
import 'chat.dart'; // Importeer de ChatPage widget
import 'melding.dart'; // Importeer de MeldingPage widget
import 'overzicht.dart'; // Importeer de OverzichtPage widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/chat': (context) => ChatPage(),
        '/melding': (context) => MeldingPage(),
        '/overzicht': (context) => OverzichtPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    ChatPage(), // Chatpagina
    Container(), // Lege container voor Meldingpagina
    OverzichtPage(), // Overzichtpagina
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true, // Hier instellen op true
            builder: (BuildContext context) {
              return MeldingPage();
            },
          );
        },
        child: Icon(Icons.add,
            size: 36.0, color: Colors.white), // Maak het kruis groter en wit
        backgroundColor: Colors.orange,
        shape: CircleBorder(), // Maak de knop helemaal rond
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 20.0), // Voeg padding toe aan de iconen
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    left:
                        12.0), // Verplaats het linker icoon meer naar het midden
                child: IconButton(
                  icon: Icon(Icons.chat,
                      size: 30.0), // Maak het linker icoon groter
                  onPressed: () {
                    // Controleer of de huidige pagina niet de ChatPage is voordat u navigeert
                    if (_selectedIndex != 0) {
                      setState(() {
                        _selectedIndex =
                            0; // Stel de geselecteerde index in op de ChatPage
                      });
                    }
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right:
                        12.0),
                child: IconButton(
                  icon: Icon(Icons.list_alt,
                      size: 30.0),
                  onPressed: () {
                    setState(() {
                      _selectedIndex =
                          2;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
