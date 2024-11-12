import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class EmergencyPage extends StatefulWidget {
  @override
  _EmergencyPageState createState() => _EmergencyPageState();
}

class _EmergencyPageState extends State<EmergencyPage> {
  Position? _currentPosition;

  // Fonction pour obtenir la position actuelle
  Future<void> _getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      setState(() {
        _currentPosition = position;
      });
      _sendAlert(position);
    } catch (e) {
      print("Erreur lors de la localisation : $e");
    }
  }

  // Fonction pour envoyer l'alerte
  void _sendAlert(Position position) {
    // Exemple : envoyer la position à des contacts d'urgence
    String alertMessage =
        "Alerte d'urgence ! Position actuelle : https://maps.google.com/?q=${position.latitude},${position.longitude}";

    // Remplacez par une vraie méthode d'envoi (SMS, API, etc.)
    print(alertMessage); // Exemple d'alerte à remplacer par une vraie alerte
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Désactive le bout
        title: Text("Bouton d'Urgence"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Appuyez sur le bouton en cas d'urgence",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              onPressed: _getCurrentLocation,
              child: Text(
                "Alerte d'Urgence",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            _currentPosition != null
                ? Text(
                    "Position actuelle :\nLatitude: ${_currentPosition!.latitude}, Longitude: ${_currentPosition!.longitude}",
                    textAlign: TextAlign.center,
                  )
                : Text(
                    "Aucune position détectée.",
                    style: TextStyle(color: Colors.grey),
                  ),
          ],
        ),
      ),
    );
  }
}
