import 'dart:io';
import 'kaart.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
                // Navigeer naar de profielpagina wanneer op het profielicoontje wordt gedrukt
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
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
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Veiligheid',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 115,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Sociaal',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 115,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Evenementen',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigate to the new page when tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              NewPage()), // Navigeer naar de ChatPage
                    );
                  },
                  child: Container(
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
                              image: AssetImage('assets/images/inbraak.png'),
                              fit: BoxFit.cover,
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  XFile? _imageFile;

  Future<void> _selectImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = pickedFile;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profiel'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Bovenin de afbeelding met aanpassen icoon
            GestureDetector(
              onTap: _selectImage,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.orange,
                    backgroundImage: _imageFile != null
                        ? FileImage(File(_imageFile!.path))
                        : null,
                    child: _imageFile == null
                        ? Icon(
                            Icons.account_circle,
                            size: 50,
                            color: Colors.white,
                          )
                        : null,
                  ),
                  SizedBox(width: 20),
                  Icon(Icons.edit),
                ],
              ),
            ),
            SizedBox(height: 15),
            // Naam van de gebruiker
            Text(
              'Jorg van de Rijdt',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            // Overzicht van gemaakte meldingen
            Text(
              'Mijn gemaakte meldingen:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 2, // Aantal meldingen, voorbeeld: 5
                itemBuilder: (context, index) {
                  // Hier kun je de gegevens van de meldingen weergeven
                  return ListTile(
                    title: Text('Melding '),
                    subtitle:
                        Text('Dit is de omschrijving van melding ${index + 1}'),
                    // Voeg hier eventuele andere relevante informatie toe
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            // Uitloggen knoppen
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Voer hier de actie uit voor uitloggen links
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  child: Text(
                    'Instelling',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    // Voer hier de actie uit voor uitloggen rechts
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  child: Text(
                    'Uitloggen',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Poging tot inbraak'), // Naam van de groep
            CircleAvatar(
              // Afbeelding rechtsboven
              backgroundImage: AssetImage(
                  'assets/images/inbraak.png'), // Vervang dit door de werkelijke afbeelding
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Actie voor deelnemen aan groep
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.white, // Kleur van het pictogram
                    size: 18, // Grootte van het pictogram
                  ),
                  label: Text(
                    'Groep deelnemen',
                    style: TextStyle(color: Colors.white), // Kleur van de tekst
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.orange,
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => KaartPage(
                            location: ''), // Voeg hier de locatiegegevens toe
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.location_on,
                    color: Colors.white, // Kleur van het pictogram
                    size: 18, // Grootte van het pictogram
                  ),
                  label: Text(
                    'Bekijk locatie',
                    style: TextStyle(color: Colors.white), // Kleur van de tekst
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 235.0),
            child: ElevatedButton.icon(
              onPressed: () {
                // Actie voor meldingen aan/uit zetten
              },
              icon: Icon(
                Icons.notifications,
                color: Colors.white, // Kleur van het pictogram
                size: 24, // Grootte van het pictogram
              ),
              label: Text(
                'Meldingen',
                style: TextStyle(color: Colors.white), // Kleur van de tekst
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.orange,
                ),
              ),
            ),
          ),
          Expanded(
            child: ChatScreen(),
          ),
        ],
      ),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<ChatMessage> _messages = [];

  File? _imageFile;

  void _handleSubmit(String text) {
    _controller.clear();
    setState(() {
      _messages.insert(
        0,
        ChatMessage(
          text: text,
          image: _imageFile,
          profileImage:
              'assets/images/persoon1.png', // Voeg hier de URL van de profielfoto toe
        ),
      );
      _imageFile =
          null; // Reset de geselecteerde afbeelding na het verzenden van het bericht
    });
  }

  Future<void> _selectImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            reverse: true,
            itemCount: _messages.length,
            itemBuilder: (BuildContext context, int index) {
              return _messages[index];
            },
          ),
        ),
        Divider(height: 10.0),
        Padding(
          padding: const EdgeInsets.only(
              bottom: 28.0), // Voeg padding toe aan de onderkant
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.attach_file),
                      onPressed: _selectImage,
                    ),
                    Flexible(
                      child: TextField(
                        controller: _controller,
                        onSubmitted: _handleSubmit,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Type een bericht',
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.send),
                      onPressed: () => _handleSubmit(_controller.text),
                    ),
                  ],
                ),
                _imageFile != null
                    ? Image.file(_imageFile!)
                    : SizedBox.shrink(), // Toon de geselecteerde afbeelding
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String text;
  final File? image;
  final String
      profileImage; // Toegevoegd om de URL van de profielfoto op te nemen

  const ChatMessage(
      {required this.text, this.image, required this.profileImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage:
                AssetImage(profileImage), // Profielfoto van de gebruiker
          ),
          const SizedBox(
              width: 8.0), // Ruimte tussen de profielfoto en de tekst
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jorg van de Rijdt', // Vervang dit door de naam van de gebruiker
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                if (text
                    .isNotEmpty) // Alleen tekst weergeven als het niet leeg is
                  Container(
                    margin: const EdgeInsets.only(top: 5.0),
                    child: Text(text),
                  ),
                if (image != null) // Afbeelding weergeven als het bestaat
                  Container(
                    margin: const EdgeInsets.only(top: 5.0),
                    child: Image.file(image!),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
