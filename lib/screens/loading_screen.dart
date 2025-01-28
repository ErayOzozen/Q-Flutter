import 'package:flutter/material.dart';
import 'package:flutter_app/core/constants.dart';
import 'package:go_router/go_router.dart'; // GoRouter import edilmiştir

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo ve yükleme göstergesi bölümü
          Container(
            width: double.infinity,
            child: Column(
              children: [
                // Logo
                Container(
                  width: 150,
                  height: 150,
                  child: Image.asset(
                    'assets/images/aileee.png',
                    fit: BoxFit.contain,
                  ),
                ),
                
                const SizedBox(height: 20),
                
                // Yükleme ikonu ve yazısı
                InkWell(
                  onTap: () {
                    // Home ekranına yönlendirme
                    context.go("/home"); // GoRouter ile yönlendirme
                  },
                  child: SizedBox(
                    width: 300,
                    child: CircularProgressIndicator(
                       valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}