import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ami', style: TextStyle(color: Colors.black, fontSize: 20)),
            Text('+221708204367',
                style: TextStyle(color: Colors.black, fontSize: 16)),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Action de retour
          },
        ),
        actions: [
          CircleAvatar(
            child: Text('A'),
            backgroundColor: Colors.deepPurple[100],
          ),
          SizedBox(width: 16),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Explorer'),
            _buildOptionCard([
              _buildOptionTile(context, 'Promotions', Icons.credit_card),
              _buildOptionTile(context, 'Favoris', Icons.star),
            ]),
            SizedBox(height: 16),
            _buildSectionTitle('Mon compte'),
            _buildOptionCard([
              _buildOptionTile(
                  context, 'Informations personnelles', Icons.person),
              _buildOptionTile(context, 'Modes de paiement', Icons.credit_card),
              _buildOptionTile(context, 'Activité', Icons.history),
              _buildOptionTile(context, 'Vos adresses', Icons.location_on),
            ]),
            SizedBox(height: 16),
            _buildSectionTitle('Plus d\'actions'),
            _buildOptionCard([
              _buildOptionTile(context, 'Support', Icons.chat),
              _buildOptionTile(context, 'Yassir Business', Icons.business),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildOptionCard(List<Widget> children) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: children,
      ),
    );
  }

  Widget _buildOptionTile(BuildContext context, String title, IconData icon) {
    return ListTile(
      leading: Icon(icon, color: Colors.deepPurple),
      title: Text(
        title,
        style: TextStyle(fontSize: 16, color: Colors.black),
      ),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
      onTap: () {
        // Ajouter une navigation vers une page spécifique si besoin
      },
    );
  }
}
