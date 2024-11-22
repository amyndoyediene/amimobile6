import 'package:flutter/material.dart';

class SupervisionTempsReelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Supervision en Temps Réel'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text(
          'Carte des trajets en cours',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
