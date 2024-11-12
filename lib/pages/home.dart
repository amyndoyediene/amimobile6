// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Even Amisam App',
//       theme: ThemeData(
//         primarySwatch: Colors.purple,
//       ),
//       home: acPage(),
//       routes: {
//         '/transport': (context) => TransportPage(),
//         '/restaurants': (context) => RestaurantsPage(),
//         '/supermarche': (context) => SupermarchePage(),
//         '/livraison': (context) => LivraisonPage(),
//         '/boutique': (context) => BoutiquePage(),
//       },
//     );
//   }
// }

// class acPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Bienvenue, Ami'),
//         actions: [
//           CircleAvatar(
//             child: Text('A'),
//             backgroundColor: Colors.grey[300],
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Almadies, Dakar, Dakar, Senegal',
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 16),
//             Container(
//               padding: EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.grey[200],
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       Icon(Icons.remove_red_eye, color: Colors.grey[600]),
//                       SizedBox(width: 8),
//                       Text(
//                         '0,00 XOF',
//                         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       // Action de rechargement
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.purple,
//                     ),
//                     child: Text('+ Recharger'),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//             Expanded(
//               child: GridView.count(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 10,
//                 children: [
//                   ServiceCard(
//                     icon: Icons.directions_car,
//                     label: 'Transport',
//                     onTap: () {
//                       Navigator.pushNamed(context, '/transport');
//                     },
//                   ),
//                   ServiceCard(
//                     icon: Icons.restaurant,
//                     label: 'Restaurants',
//                     onTap: () {
//                       Navigator.pushNamed(context, '/restaurants');
//                     },
//                   ),
                 
//                   ServiceCard(
//                     icon: Icons.store,
//                     label: 'Boutique',
//                     onTap: () {
//                       Navigator.pushNamed(context, '/boutique');
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             // SizedBox(height: 20),
//             // Text(
//             //   'Savoure plus, dépense moins 😋',a
//             //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             // ),
//             // Text(
//             //   'Ne rate pas nos promos exclusives du jour',
//             //   style: TextStyle(fontSize: 16, color: Colors.grey[600]),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ServiceCard extends StatelessWidget {
//   final IconData icon;
//   final String label;
//   final VoidCallback onTap;

//   ServiceCard({required this.icon, required this.label, required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           color: Colors.grey[200],
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(icon, size: 50, color: Colors.purple),
//             SizedBox(height: 10),
//             Text(label, style: TextStyle(fontSize: 16, color: Colors.black)),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Pages pour chaque service
// class TransportPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Transport')),
//       body: Center(child: Text('Page Transport')),
//     );
//   }
// }

// class RestaurantsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Restaurants')),
//       body: Center(child: Text('Page Restaurants')),
//     );
//   }
// }

// class SupermarchePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Supermarché')),
//       body: Center(child: Text('Page Supermarché')),
//     );
//   }
// }

// class LivraisonPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Livraison')),
//       body: Center(child: Text('Page Livraison')),
//     );
//   }
// }

// class BoutiquePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Boutique')),
//       body: Center(child: Text('Page Boutique')),
//     );
//   }
// }
