import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keşfet', style: TextStyle(color: Colors.white)),
        backgroundColor: colors["primary"],
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sigorta Türlerini Keşfet',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(221, 0, 0, 0),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Aradığınız sigorta türü...',
                labelStyle: TextStyle(color: colors["primary"]),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: colors["primary"]!),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: colors["primary"]!, width: 2),
                ),
                prefixIcon: Icon(Icons.search, color: colors["primary"]),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: colors["primary"],
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Ara',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Popüler Sigorta Türleri',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(221, 0, 0, 0),
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _buildInsuranceChip('Araç Sigortası', Colors.blue),
                _buildInsuranceChip('Sağlık Sigortası', Colors.green),
                _buildInsuranceChip('Konut Sigortası', Colors.orange),
                _buildInsuranceChip('Seyahat Sigortası', Colors.purple),
                _buildInsuranceChip('Hayat Sigortası', Colors.red),
                _buildInsuranceChip('İş Yeri Sigortası', Colors.teal),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInsuranceChip(String label, Color color) {
    return Chip(
      label: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}