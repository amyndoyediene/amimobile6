import 'package:flutter/material.dart';

class TaxiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Réservation de Taxi')),
      body: Center(child: Text('Détails de la réservation de Taxi')),
    );
  }
}

class VoiturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Réservation de Voiture')),
      body: Center(child: Text('Détails de la réservation de Voiture')),
    );
  }
}

class MotoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Réservation de Moto')),
      body: Center(child: Text('Détails de la réservation de Moto')),
    );
  }
}
