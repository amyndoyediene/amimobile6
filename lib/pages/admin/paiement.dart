import 'package:flutter/material.dart';

class PaiementsCommissionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paiements et Commissions'),
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.money),
            title: Text('Paiement 1'),
            subtitle: Text('Statut : Confirmé'),
          ),
          ListTile(
            leading: Icon(Icons.money),
            title: Text('Paiement 2'),
            subtitle: Text('Statut : En attente'),
          ),
        ],
      ),
    );
  }
}
