import 'package:amimobile6/pages/connexi.dart';
import 'package:amimobile6/pages/livreur/menu.dart';
import 'package:flutter/material.dart';

class livPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/cond.png', height: 200),
          SizedBox(height: 20),
          Text(
            "Livreur & Conducteur",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "page de connexion des conducteurs et livreur",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MenuPrincipal()),
    );
  },
  style: ElevatedButton.styleFrom(
    foregroundColor: Colors.black, backgroundColor: Colors.green, // Couleur du texte
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Optionnel : marges internes
    textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), // Optionnel : style du texte
  ),
  child: Text("C'est partie"),
),

        ],
      ),
    );
  }
}
