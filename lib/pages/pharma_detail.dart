import 'package:flutter/material.dart';

class PharmacyImagePage extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      "name": "Vicks ZzzQuil Sommeil 60 Gommes",
      "price": "14.95 CFA",
      "oldPrice": "16.95 CFA",
      "details": "60 gommes",
      "image": "assets/med1.png",
    },
    {
      "name": "Bion 3 Énergie Continue 30 Comprimés",
      "price": "13.90 CFA",
      "oldPrice": "15.90 CFA",
      "details": "30 comprimés",
      "image": "assets/med2.png",
    },
    {
      "name": "Bion Énergie Continue 60 Comprimés",
      "price": "21.90 CFA",
      "oldPrice": "23.90 CFA",
      "details": "60 comprimés",
      "image": "assets/med3.png",
    },
    {
      "name": "Oropolis Cœur Liquide Pastilles Pour La Gorge",
      "price": "6.49 CFA",
      "oldPrice": "6.99 CFA",
      "details": "",
      "image": "assets/med4.png",
    },
    {
      "name": "Oropolis Spray Gorge - Propolis - 20 ML",
      "price": "6.49 CFA",
      "oldPrice": "6.99 CFA",
      "details": "20 ml",
      "image": "assets/med5.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Products"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Search bar
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Recherche un medicament",
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Product list
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      leading: Image.asset(
                        product["image"],
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        product["name"],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product["details"],
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Text(
                                product["price"],
                                style: const TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                product["oldPrice"],
                                style: const TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: FloatingActionButton(
                        onPressed: () {
                          // Action d'ajout au panier
                        },
                        backgroundColor: Colors.green,
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        mini: true,
                      ),
                    ),
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
