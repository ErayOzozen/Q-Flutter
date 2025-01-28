import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keşfet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Keşfet Sayfası', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Arama yapın...',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ],
        ),
      ),
    );
  }
}