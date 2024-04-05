import 'package:flutter/material.dart';
import 'chat.dart';
import 'melding.dart';
import 'overzicht.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigatiemenu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(), // Toon de MainPage
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
    MeldingPage(), // Meldingpagina
    OverzichtPage(), // Overzichtpagina
  ];

  // Vlag om te bepalen of de bottom navigation bar moet worden getoond
  bool _showBottomNavBar = true;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // Controleer of de bottom navigation bar moet worden getoond op basis van de geselecteerde pagina
      _showBottomNavBar = index != 1; // Toon niet op de MeldingPage (index 1)
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: _showBottomNavBar ? BottomNavigationBar(
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
        onTap: _onItemTapped,
      ) : null,
    );
  }
}
