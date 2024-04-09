import 'package:flutter/material.dart';

class KaartPage extends StatelessWidget {
  final String location;

  // Constructor om de locatie te ontvangen
  KaartPage({required this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
      ),
      body: Center(
        child: Text(
          'Location: $location',
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
