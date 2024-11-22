import 'package:flutter/material.dart';

class CommandesPage extends StatelessWidget {
  final List<Map<String, String>> commandes = [
    {"client": "Jean Dupont", "adresse": "QG4F+XCR, Dakar", "statut": "En attente"},
    {"client": "Marie Claire", "adresse": "Cité Keur Gorgui", "statut": "En cours"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Commandes et Trajets'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: commandes.length,
        itemBuilder: (context, index) {
          final commande = commandes[index];
          return ListTile(
            title: Text(commande['client']!),
            subtitle: Text('Adresse : ${commande['adresse']}\nStatut : ${commande['statut']}'),
            trailing: commande['statut'] == "En attente"
                ? ElevatedButton(
                    onPressed: () {
                      // Confirmer commande
                    },
                    child: Text('Confirmer'),
                  )
                : null,
          );
        },
      ),
    );
  }
}
