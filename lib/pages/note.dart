import 'package:flutter/material.dart';

class AvisPage extends StatefulWidget {
  @override
  _AvisPageState createState() => _AvisPageState();
}

class _AvisPageState extends State<AvisPage> {
  double _rating = 0; // Note par défaut
  TextEditingController _commentController = TextEditingController();

  // Liste des avis existants
  List<Map<String, dynamic>> _reviews = [
    {"user": "Alice", "rating": 4.5, "comment": "Conducteur très sympathique !"},
    {"user": "Bob", "rating": 5, "comment": "Livraison rapide et efficace."},
  ];

  void _submitReview() {
    setState(() {
      _reviews.add({
        "user": "Utilisateur", // Remplacez par le nom de l'utilisateur connecté
        "rating": _rating,
        "comment": _commentController.text,
      });
      _rating = 0;
      _commentController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Désactive le bout
        title: Text("Avis et Notations"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Donnez votre avis",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Système d'étoiles pour la notation
            Row(
              children: List.generate(5, (index) {
                return IconButton(
                  icon: Icon(
                    index < _rating ? Icons.star : Icons.star_border,
                    color: Colors.amber,
                  ),
                  onPressed: () {
                    setState(() {
                      _rating = index + 1.0;
                    });
                  },
                );
              }),
            ),
            // Champ de texte pour l'avis
            TextField(
              controller: _commentController,
              decoration: InputDecoration(
                labelText: "Votre commentaire",
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _submitReview,
              child: Text("Soumettre l'avis"),
            ),
            SizedBox(height: 20),
            Divider(),
            Text(
              "Avis des autres utilisateurs",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: _reviews.length,
                itemBuilder: (context, index) {
                  final review = _reviews[index];
                  return ListTile(
                    leading: Icon(Icons.person),
                    title: Text("${review['user']} - ${review['rating']} étoiles"),
                    subtitle: Text(review['comment']),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
