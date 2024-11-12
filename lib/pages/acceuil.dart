import 'package:amimobile6/pages/home.dart';
import 'package:amimobile6/pages/home1.dart';
import 'package:amimobile6/pages/urgence.dart';
import 'package:amimobile6/pages/livrer.dart';
import 'package:amimobile6/pages/note.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HoPage(),
    );
  }
}

class HoPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HoPage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    Ho1Page(),
    livPage(),
    AvisPage(),
    EmergencyPage(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Fond en blanc
        title: Text(
          "UrbanMove",
          style: TextStyle(color: Colors.black), // Titre en noir
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black), // Icônes en noir
         automaticallyImplyLeading: false, // Désactive le bouton de retour
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black, // Icônes sélectionnées en noir
        unselectedItemColor: Colors.black54, // Icônes non sélectionnées en gris
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
         
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // Exemple pour Accueil
            label: 'Accueil',
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.delivery_dining), // Exemple pour Livreur
            label: 'Livreur',
          
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.star), // Exemple pour Avis et Note
            label: 'Avis et Note',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning), // Exemple pour Urgence
            label: 'Urgence',
          ),
        ],
      ),
    );
  }
}
