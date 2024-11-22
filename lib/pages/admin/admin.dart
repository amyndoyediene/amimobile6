import 'package:amimobile6/pages/admin/gestion.dart';
import 'package:amimobile6/pages/admin/paiement.dart';
import 'package:amimobile6/pages/admin/statis.dart';
import 'package:amimobile6/pages/admin/supervi.dart';
import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Dashboard'),
        backgroundColor: Colors.blueAccent,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.admin_panel_settings, size: 40, color: Colors.blueAccent),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Administrateur',
                    style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'admin@urbanmove.com',
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard, color: Colors.blue),
              title: Text('Dashboard'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.people, color: Colors.green),
              title: Text('Gestion des Utilisateurs'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GestionUtilisateursPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.supervisor_account, color: Colors.orange),
              title: Text('Supervision Temps Réel'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SupervisionTempsReelPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.payment, color: Colors.purple),
              title: Text('Gestion des Paiements'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PaiementsCommissionsPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.bar_chart, color: Colors.red),
              title: Text('Statistiques et Rapports'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => StatistiquesRapportsPage()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Bienvenue dans le tableau de bord administrateur',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
