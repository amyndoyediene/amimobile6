import 'package:flutter/material.dart';

class StatutPage extends StatefulWidget {
  @override
  _StatutPageState createState() => _StatutPageState();
}

class _StatutPageState extends State<StatutPage> {
  String _statut = "Hors service"; // Statut par défaut
  bool _acceptReservations = false; // Option pour accepter ou stopper les réservations

  // Méthode pour mettre à jour le statut
  void _updateStatut(String nouveauStatut) {
    setState(() {
      _statut = nouveauStatut;
    });
  }

  // Méthode pour changer l'état des réservations
  void _toggleReservations(bool value) {
    setState(() {
      _acceptReservations = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestion des Statuts'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gestion des statuts en temps réel
            Text(
              'Statut en temps réel',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Disponible'),
              leading: Radio<String>(
                value: 'Disponible',
                groupValue: _statut,
                onChanged: (String? value) {
                  _updateStatut(value!);
                },
              ),
            ),
            ListTile(
              title: Text('En course'),
              leading: Radio<String>(
                value: 'En course',
                groupValue: _statut,
                onChanged: (String? value) {
                  _updateStatut(value!);
                },
              ),
            ),
            ListTile(
              title: Text('Hors service'),
              leading: Radio<String>(
                value: 'Hors service',
                groupValue: _statut,
                onChanged: (String? value) {
                  _updateStatut(value!);
                },
              ),
            ),
            Divider(),

            // Option pour accepter ou stopper les réservations
            Text(
              'Options de Réservations',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SwitchListTile(
              title: Text('Accepter les réservations et les demandes de livraison'),
              value: _acceptReservations,
              onChanged: _toggleReservations,
            ),
            Divider(),

            // Gestion des commandes et trajets
            Text(
              'Gestion des Commandes et Trajets',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: Icon(Icons.notifications, color: Colors.orange),
              title: Text('Recevoir des notifications pour les nouvelles commandes'),
              onTap: () {
                // Logique pour activer ou désactiver les notifications
              },
            ),
            ListTile(
              leading: Icon(Icons.track_changes, color: Colors.green),
              title: Text('Suivre les trajets et les commandes'),
              onTap: () {
                // Logique pour ouvrir une page de suivi
              },
            ),
            SizedBox(height: 20),

            // Affichage des statuts actuels
            Text(
              'Statut actuel : $_statut',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'Réservations activées : ${_acceptReservations ? "Oui" : "Non"}',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
