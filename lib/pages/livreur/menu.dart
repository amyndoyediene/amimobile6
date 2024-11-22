import 'package:flutter/material.dart';
import '../inscrire.dart';
import 'statut.dart';
import 'commandes.dart';
import 'historiques.dart';

class MenuPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Conducteur/Livreur'),
      ),
      body: ListView(
        children: [
          
          ListTile(
             leading: Icon(Icons.settings, color: Colors.green), // Icône 
            title: Text('Gestion des Statuts'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => StatutPage())),
          ),
          ListTile(
             leading: Icon(Icons.directions_car, color: Colors.green), // Icône 
            title: Text('Commandes et Trajets'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CommandesPage())),
          ),
          ListTile(
             leading: Icon(Icons.history, color: Colors.green), // Icône 
            title: Text('Historique et Revenus'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HistoriquePage())),
          ),
        ],
      ),
    );
  }
}
