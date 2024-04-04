import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigatie Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavigationPage(),
    );
  }
}

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    ChatsPage(),
    MeldingPage(),
    OverzichtPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigatie Menu'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Melding',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            label: 'Overzicht',
          ),
        ],
      ),
    );
  }
}

class ChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Chats Pagina',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}

class MeldingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Melding Pagina',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}

class OverzichtPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Overzicht Pagina',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}
