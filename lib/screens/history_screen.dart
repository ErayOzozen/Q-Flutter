import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Geçmiş'),
      ),
      body: const Center(
        child: Text('Geçmiş Ekranı', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}