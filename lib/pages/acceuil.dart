import 'package:flutter/material.dart';
import 'package:amimobile6/pages/home.dart';
import 'package:amimobile6/pages/home1.dart';
import 'package:amimobile6/pages/urgence.dart';
import 'package:amimobile6/pages/livrer.dart';
import 'package:amimobile6/pages/note.dart';

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
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "UrbanMove",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green, // Couleur des icônes sélectionnées en vert
        unselectedItemColor: Colors.green.shade300, // Couleur des icônes non sélectionnées en vert clair
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delivery_dining),
            label: 'Livreur',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Avis et Note',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning),
            label: 'Urgence',
          ),
        ],
      ),
    );
  }
}
