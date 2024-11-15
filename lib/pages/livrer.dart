import 'package:amimobile6/pages/connecter.dart';
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
            onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );},
            child: Text("C'est partie"),
          ),
        ],
      ),
    );
  }
}
