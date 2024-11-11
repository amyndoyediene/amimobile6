import 'package:amimobile6/pages/inscription.dart';
import 'package:amimobile6/pages/acceuil.dart';
import 'package:amimobile6/pages/motdepasseoubli.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Action de retour
            Navigator.pop(context); // Action de retour
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.admin_panel_settings, color: Colors.black),
            onPressed: () {
              // Action pour l'icône "admin"
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Image.asset(
              'assets/LOG.png', // Remplacez par le chemin de votre logo
              height: 80,
            ),
            SizedBox(height: 10),
            Text(
              'UrbanMove',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.red, // Couleur du titre en rouge
              ),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                labelText: 'Numero de telephone',
                hintText: '77 765 54 47',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Mot de passe',
                suffixIcon: Icon(Icons.visibility_off),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {
                        // Action de "Se souvenir de moi"
                      },
                    ),
                    Text('Se souvenir de moi'),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    // Action "Mot de passe oublié ?"
                    
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  MotDePasseOubliePage()),
                    );
                  },
                  child: Text(
                    'Mot de passe oublié ?',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Action "Me Connecter"
                Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HoPage()),
                    );

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Couleur du bouton
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              ),
              child: Text(
                'Me Connecter',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Pas encore de compte ?"),
                TextButton(
                  onPressed: () {
                    // Action "Créer un compte"
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SiPage()),
                    );
                  },
                  child: Text(
                    'Créez-en un !',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
