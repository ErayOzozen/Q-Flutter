import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Geçmiş', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue, // AppBar rengi
        iconTheme: const IconThemeData(color: Colors.white), // Geri düğmesi rengi
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Son İşlemler',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  _buildHistoryItem('Araç Sigortası Ödemesi', '12 Ekim 2023', Icons.car_repair),
                  _buildHistoryItem('Sağlık Sigortası Yenileme', '10 Ekim 2023', Icons.health_and_safety),
                  _buildHistoryItem('Konut Sigortası İnceleme', '5 Ekim 2023', Icons.home),
                  _buildHistoryItem('Seyahat Sigortası Satın Alma', '1 Ekim 2023', Icons.flight),
                  _buildHistoryItem('Hayat Sigortası Sorgulama', '25 Eylül 2023', Icons.person),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryItem(String title, String date, IconData icon) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(title),
        subtitle: Text(date),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
        },
      ),
    );
  }
}