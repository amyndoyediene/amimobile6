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
            _buildSectionTitle('Mon compte'),
            _buildOptionCard([
              _buildOptionTile(
                  context, 'Informations personnelles', Icons.person, PersonalInfoPage()),
              _buildOptionTile(
                  context, 'Modes de paiement', Icons.credit_card, PaymentMethodsPage()),
              _buildOptionTile(context, 'Support', Icons.chat, SupportPage()),
              _buildOptionTile(context, 'Urban Move', Icons.business, YassirBusinessPage()),
              _buildOptionTile(context, 'Promotions', Icons.credit_card, PromotionsPage()),
              _buildOptionTile(context, 'Se déconnecter', Icons.star, LogoutPage()),
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

  Widget _buildOptionTile(
      BuildContext context, String title, IconData icon, Widget page) {
    return ListTile(
      leading: Icon(icon, color: Colors.deepPurple),
      title: Text(
        title,
        style: TextStyle(fontSize: 16, color: Colors.black),
      ),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}

// Création des pages spécifiques

class PersonalInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informations personnelles'),
      ),
      body: Center(
        child: Text('Page Informations personnelles'),
      ),
    );
  }
}

class PaymentMethodsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modes de paiement'),
      ),
      body: Center(
        child: Text('Page Modes de paiement'),
      ),
    );
  }
}

class SupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Support'),
      ),
      body: Center(
        child: Text('Page Support'),
      ),
    );
  }
}

class YassirBusinessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Urban Move'),
      ),
      body: Center(
        child: Text('Page Yassir Business'),
      ),
    );
  }
}

class PromotionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Promotions'),
      ),
      body: Center(
        child: Text('Page Promotions'),
      ),
    );
  }
}

class LogoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Se déconnecter'),
      ),
      body: Center(
        child: Text('Page Se déconnecter'),
      ),
    );
  }
}
