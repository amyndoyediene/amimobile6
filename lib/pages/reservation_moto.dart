import 'package:amimobile6/pages/epiceri.dart';
import 'package:amimobile6/pages/pharmacie.dart';
import 'package:amimobile6/pages/reservation_page.dart';
import 'package:amimobile6/pages/reservation_voiture.dart';
import 'package:amimobile6/pages/restaurant.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LivraisonPage(),
    );
  }
}

class LivraisonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Adresse de livraison',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Text(
              'Ngor, Dakar 12000, Sénégal',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.account_circle, color: Colors.black, size: 30),
          ),
        ],
      ),
      body: SingleChildScrollView(  // Envelopper la Column dans un SingleChildScrollView
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Barre de recherche
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Rechercher un produit',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),

            // Boutons de catégories
            Container(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildCategoryButton(context, 'Pharmacie', Icons.local_pharmacy, pharmaPage()),
                  _buildCategoryButton(context, 'Restaurants', Icons.restaurant, CresoPage()),
                  _buildCategoryButton(context, 'Epicerie', Icons.shopping_basket, epiPage()),
                  _buildCategoryButton(context, 'Reservation', Icons.calendar_today, ReservationPage()),
                ],
              ),
            ),

            // Section Promotion
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Supermarché AUCHAN',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Une service de livraison disponible 24h!!',
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
            ),

            Card(
              margin: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network('assets/superm.png', fit: BoxFit.cover),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'YASSIR MARKET OKME',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Text('15-25min • 500,00 Fr', style: TextStyle(color: Colors.grey)),
                        Spacer(),
                        Icon(Icons.star, color: Colors.orange, size: 16),
                        Text('4.5', style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          SizedBox(height: 10),
          Card(
              margin: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network('assets/super.png', fit: BoxFit.cover),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'YASSIR MARKET OKME',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Text('15-25min • 500,00 Fr', style: TextStyle(color: Colors.grey)),
                        Spacer(),
                        Icon(Icons.star, color: Colors.orange, size: 16),
                        Text('4.5', style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(BuildContext context, String label, IconData icon, Widget targetPage) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetPage),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blueGrey[50],
              child: Icon(icon, size: 30, color: Colors.green),
            ),
            SizedBox(height: 5),
            Text(label, style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
