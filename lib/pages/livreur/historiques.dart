import 'package:flutter/material.dart';

class HistoriquePage extends StatelessWidget {
  final List<Map<String, String>> historique = [
    {"date": "21/11/2024", "client": "Jean Dupont", "revenue": "2000F"},
    {"date": "20/11/2024", "client": "Marie Claire", "revenue": "1500F"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historique et Revenus'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: historique.length,
              itemBuilder: (context, index) {
                final item = historique[index];
                return ListTile(
                  title: Text(item['client']!),
                  subtitle: Text('Date : ${item['date']}\nRevenu : ${item['revenue']}'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Revenu Total : 3500F',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
