import 'package:flutter/material.dart';

class StatistiquesRapportsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statistiques et Rapports'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text(
          'Graphiques et données analytiques',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
