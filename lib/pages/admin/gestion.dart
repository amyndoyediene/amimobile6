import 'package:flutter/material.dart';

class GestionUtilisateursPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestion des Utilisateurs'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Utilisateur 1'),
            subtitle: Text('Statut : Actif'),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Conducteur 1'),
            subtitle: Text('Statut : En attente de validation'),
            trailing: Icon(Icons.chevron_right),
          ),
          // Ajoutez d'autres ListTile ici
        ],
      ),
    );
  }
}
