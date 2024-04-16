import 'package:flutter/material.dart';
import 'package:flutter_application_dc27/chat.dart';
import 'kaart.dart'; // Importeer de KaartPage

// Definieer een class voor de dummy-gegevens van meldingen
class NotificationData {
  final String title;
  final String description;
  final String location;

  NotificationData({
    required this.title,
    required this.description,
    required this.location,
  });
}

class OverzichtPage extends StatelessWidget {
  // Definieer dummy meldingen
  final List<NotificationData> notifications = [
    NotificationData(
      title: 'Poging tot inbraak',
      description: 'Zaterdagnacht waren er 2 jongens die voor mijn...',
      location: '1',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Zoeken...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            ListView.builder(
              itemCount: notifications.length,
              shrinkWrap: true,
              physics:
                  NeverScrollableScrollPhysics(), // Disable scrolling for the inner ListView
              itemBuilder: (context, index) {
                final notification = notifications[index];
                return Padding(
                  padding: EdgeInsets.all(8.0), // Reduced padding to 8.0
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage(
                            'assets/images/persoon1.png'), // Person's photo
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              notification.title, // Notification title
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              notification
                                  .description, // Notification short text
                              style: TextStyle(fontSize: 16.0),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton.icon(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => KaartPage(
                                            location: notification.location),
                                      ),
                                    );
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(Colors
                                            .orange), // Oranje achtergrondkleur
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white), // Witte tekstkleur
                                    padding: MaterialStateProperty.all<
                                        EdgeInsetsGeometry>(
                                      EdgeInsets.symmetric(
                                          vertical: 8.0,
                                          horizontal:
                                              12.0), // Aanpassing van de padding
                                    ),
                                  ),
                                  icon:
                                      Icon(Icons.location_on), // Locatie icoon
                                  label: Text('Locatie'),
                                ),
                                ElevatedButton.icon(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            NewPage(), // Navigeer naar de Chatpagina
                                      ),
                                    );
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(Colors
                                            .orange), // Oranje achtergrondkleur
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white), // Witte tekstkleur
                                    padding: MaterialStateProperty.all<
                                        EdgeInsetsGeometry>(
                                      EdgeInsets.symmetric(
                                          vertical: 8.0,
                                          horizontal:
                                              12.0), // Aanpassing van de padding
                                    ),
                                  ),
                                  icon: Icon(Icons.chat), // Chat icoon
                                  label: Text('Chat'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        width: 80.0,
                        height: 80.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/inbraak.png'), // Incident photo
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
