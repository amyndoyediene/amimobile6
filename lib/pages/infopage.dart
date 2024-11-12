import 'package:flutter/material.dart';

// Exemple de page pour "Promotions"
class PromotionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Promotions")),
      body: Center(child: Text("Contenu des promotions")),
    );
  }
}

// Exemple de page pour "Favoris"
class FavorisPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favoris")),
      body: Center(child: Text("Contenu des favoris")),
    );
  }
}

// Exemple de page pour "Informations personnelles"
class PersonalInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Informations personnelles")),
      body: Center(child: Text("Contenu des informations personnelles")),
    );
  }
}

// Exemple de page pour "Modes de paiement"
class PaymentMethodsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Modes de paiement")),
      body: Center(child: Text("Contenu des modes de paiement")),
    );
  }
}

// Ajoutez d'autres pages pour chaque option comme ci-dessus...
