import 'package:flutter/material.dart';

class BeschrijvingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Dit is de Beschrijving pagina'),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(right: 12),
        width: 130,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFF68B1E),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          child: Text('Plaatsen'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
