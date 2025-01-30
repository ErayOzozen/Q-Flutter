import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// ignore: depend_on_referenced_packages

// import '../core/constants.dart';
//import '../core/themes.dart';
//import '../widgets/bottom_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.moon),
            onPressed: () {
          
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: Text(
                      "EÖ",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  SizedBox(height: 16),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Eray Özözen"),
                    subtitle: Text("Ad Soyad"),
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text("2320161104@gmail.com"),
                    subtitle: Text("E-posta"),                    
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24),
          FilledButton.icon(
            onPressed: () {},
            icon: Icon(Icons.logout),
            label: Text("Hesaptan Çıkış Yap."),
            style: FilledButton.styleFrom(
              minimumSize: Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          if (context.canPop())
            TextButton.icon(
              onPressed: () => context.pop(),
              icon: Icon(Icons.arrow_back),
              label: Text("Geri Dön"),
              style: TextButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            ),
        ],
      ),

    );
  }
}

extension on BuildContext {
  read() {}
}

class BottomMenu {
}

class ThemeProvider {
}