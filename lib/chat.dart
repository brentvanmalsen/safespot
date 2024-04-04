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
              onPressed: () {
                // Handleer het indrukken van het profielicoontje hier
              },
              iconSize: 50, // Maak het profielicoontje groter
              color: Colors.orange, // Geef het profielicoontje een oranje kleur
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8),
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
              onPressed: () {
                // Handleer het indrukken van het icoontje voor een nieuwe chat hier
              },
              iconSize: 40, // Maak het icoontje voor een nieuwe chat groter
              color: Colors
                  .orange, // Geef het icoontje voor een nieuwe chat een oranje kleur
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'chat Page',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
