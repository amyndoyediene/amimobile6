import 'dart:async';
import 'package:amimobile6/pages/info_user.dart';
import 'package:amimobile6/pages/livraisonpage.dart';
import 'package:amimobile6/pages/trajet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Ho1Page(),
    );
  }
}

class Ho1Page extends StatefulWidget {
  @override
  _HoPageState createState() => _HoPageState();
}

class _HoPageState extends State<Ho1Page> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Désactive le bout
        title: Text('Bienvenue, Ami'),
        elevation: 0,
        actions: [
          Text(
            'Almadies, Dakar, Dakar, Senegal',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(width: 48),
          IconButton(
            icon:
                Icon(Icons.admin_panel_settings_outlined, color: Colors.black),
            onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );},
            //ProfilePage
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
            ),
            Container(
              height: 200,
              width: 900,
              child: PageView(
                controller: _pageController,
                children: [
                  Image.asset('assets/com.png', fit: BoxFit.contain),
                  Image.asset('assets/comm.png', fit: BoxFit.contain),
                  Image.asset('assets/commm.png', fit: BoxFit.contain),
                ],
              ),
            ),
            SizedBox(height: 100),
            Text(
              'Decouvrez toutes nos offres',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 70),
            _buildNewInStockSection(),
            SizedBox(height: 70),
            _buildLivrerSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildNewInStockSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Reservation de trajet',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TaxiPage()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset('assets/taxi.png', fit: BoxFit.cover),
                      SizedBox(height: 5),
                      Text(
                        'Taxi',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VoiturePage()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset('assets/voit.png', fit: BoxFit.cover),
                      SizedBox(height: 5),
                      Text(
                        'Voiture',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MotoPage()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset('assets/livreur.png', fit: BoxFit.cover),
                      SizedBox(height: 5),
                      Text(
                        'Moto',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  //
  Widget _buildLivrerSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Service de livraison',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => restoPage()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset('assets/resto.png', fit: BoxFit.cover),
                      SizedBox(height: 5),
                      Text(
                        'Restaurant',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => epiPage()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset('assets/epice.png', fit: BoxFit.cover),
                      SizedBox(height: 5),
                      Text(
                        'Epicerie',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => pharmaPage()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset('assets/pharm.png', fit: BoxFit.cover),
                      SizedBox(height: 5),
                      Text(
                        'Pharmacie',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  //
}
