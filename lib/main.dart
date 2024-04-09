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
          Navigator.pushNamed(context,
              '/melding'); // Navigeer naar de MeldingPage wanneer op de knop wordt geklikt
        },
        child: Icon(Icons.notifications),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.chat),
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
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                setState(() {
                  _selectedIndex =
                      2; // Stel de geselecteerde index in op de OverzichtPage
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
