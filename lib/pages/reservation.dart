import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class ReservationPage extends StatefulWidget {
  @override
  _ReservationPageState createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  late GoogleMapController mapController;
  late LocationData _currentPosition;
  late Location location;
  late Set<Marker> _markers;
  TextEditingController _destinationController = TextEditingController();

  @override
  void initState() {
    super.initState();
    location = Location();
    _markers = {};
    _getUserLocation();
  }

  // Fonction pour obtenir la position actuelle de l'utilisateur
  _getUserLocation() async {
    try {
      final LocationData currentLocation = await location.getLocation();
      setState(() {
        _currentPosition = currentLocation;
        _markers.add(Marker(
          markerId: MarkerId('current_location'),
          position: LatLng(currentLocation.latitude!, currentLocation.longitude!),
        ));
      });
    } catch (e) {
      print("Error getting location: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Réservation de Taxi'),
      ),
      body: _currentPosition == null
          ? Center(child: CircularProgressIndicator())  // Affichage d'un indicateur de chargement si la position n'est pas encore disponible
          : Column(
              children: [
                Container(
                  height: 300,
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: LatLng(
                        _currentPosition.latitude ?? 0.0,
                        _currentPosition.longitude ?? 0.0,
                      ),
                      zoom: 15.0,
                    ),
                    onMapCreated: (GoogleMapController controller) {
                      mapController = controller;
                    },
                    markers: _markers,
                    myLocationEnabled: true,  // Active la position actuelle de l'utilisateur sur la carte
                    myLocationButtonEnabled: true,  // Ajoute un bouton pour centrer la carte sur la position actuelle
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _destinationController,
                    decoration: InputDecoration(
                      labelText: 'Où allez-vous ?',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.location_on),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    String destination = _destinationController.text;
                    if (destination.isNotEmpty) {
                      // Ajoutez ici la logique pour réserver le trajet
                      print("Réservation pour : $destination");
                    } else {
                      // Afficher un message si la destination est vide
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Veuillez entrer une destination")),
                      );
                    }
                  },
                  child: Text('Réserver un Taxi'),
                ),
              ],
            ),
    );
  }
}
