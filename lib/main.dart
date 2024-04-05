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
  const MainPage({Key? key}) : super(key: key);

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
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Melding',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Overzicht',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            if (index == 1) {
              // Als de "Melding" knop is ingedrukt
              Navigator.pushNamed(context, '/melding');
            }
          });
        },
      ),
    );
  }
}
