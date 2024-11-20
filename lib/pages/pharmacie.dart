import 'package:amimobile6/pages/pharma_detail.dart';
import 'package:flutter/material.dart';

class pharmaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00FF00), // Vert clair
      appBar: AppBar(
        backgroundColor: Color(0xFF00FF00), // Vert clair
        title: const Text('Pharmacie'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Section 1 : Informations de la pharmacie
            PharmacyDetails(),

            // Section 2 : Barre de recherche
            SearchBar(),

            // Section 3 : Promotions
            PromotionsSection(),

            // Section 4 : Marques
            BrandsSection(),
          ],
        ),
      ),
    );
  }
}



class PharmacyDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            // Navigation vers une nouvelle page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PharmacyImagePage(),
              ),
            );
          },
          child: Image.network(
            'assets/pharma.png', // Remplace par ton image réelle
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: const Text(
              'OPEN',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white.withOpacity(0.8),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Pharmacie Mame Ndiare',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Text('YOFF rue tafsir dieye\n677'),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.schedule, size: 16, color: Colors.grey),
                        SizedBox(width: 4),
                        Text('SCHEDULE', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    ElevatedButton.icon(
                      onPressed: () {}, // Ajoute l'action pour appeler
                      icon: const Icon(Icons.phone),
                      label: const Text('776564324'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
///ghhhh


/////ahjj

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Recherche un medicament',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}

class PromotionsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Promotions',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {}, // Ajoute l'action pour "Voir tout"
                child: const Text('See All'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              PromotionCard(
                discount: '-20%',
                image: 'assets/pharma.png',
                name: 'Parodontax de...',
                oldPrice: '9.99 ',
                newPrice: '7.99 ',
              ),
              PromotionCard(
                discount: '-25%',
                image: 'assets/pharma.png',
                name: 'COMPEED® Pa...',
                oldPrice: '8.99 €',
                newPrice: '6.99 €',
              ),
              PromotionCard(
                discount: '-25%',
                image: 'assets/pharma.png',
                name: 'Novalgin...',
                oldPrice: '12.99 €',
                newPrice: '9.75 €',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PromotionCard extends StatelessWidget {
  final String discount;
  final String image;
  final String name;
  final String oldPrice;
  final String newPrice;

  const PromotionCard({
    required this.discount,
    required this.image,
    required this.name,
    required this.oldPrice,
    required this.newPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 150,
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(image,
                    height: 100, width: double.infinity, fit: BoxFit.cover),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 2.0),
                    color: Colors.red,
                    child: Text(
                      discount,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '$oldPrice ',
                          style: const TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                          ),
                        ),
                        TextSpan(
                          text: newPrice,
                          style: const TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
  onPressed: () {
    // Ajoute l'action ici
  },
  style: ElevatedButton.styleFrom(
    shape: const CircleBorder(), // Optionnel : rend le bouton circulaire
    padding: const EdgeInsets.all(10), // Ajuste l'espacement
  ),
  child: const Icon(Icons.add),
),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//

class BrandsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF00FF00), // Couleur de fond verte
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Titre "Marques"
              const Text(
                'Marques',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),

              // Images sous le titre
              Row(
                children: [
                  // Première image
                  Expanded(
                    child: Image.network(
                      'assets/pharma.png', // Remplace par ton chemin d'image
                      height: 100, // Ajuste la hauteur
                      fit: BoxFit.contain, // Affiche l'image entière sans la recadrer
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Deuxième image
                  Expanded(
                    child: Image.network(
                      'assets/pharma.png', // Remplace par ton chemin d'image
                      height: 100, // Ajuste la hauteur
                      fit: BoxFit.contain, // Affiche l'image entière sans la recadrer
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
