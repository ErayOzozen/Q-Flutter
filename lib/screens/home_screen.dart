import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, Color> colors = {
      "surface": Colors.white,
      "primary": Colors.blue,
    };

    var icon = Icon(
      CupertinoIcons.person_circle,
      size: 80,
      color: colors["primary"],
    );

    var container2 = Container(
      height: 200,
      color: colors["surface"],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(height: 10),
          Text(
            'Eray Özözen',
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );

    var container = container2;

    return Scaffold(
      backgroundColor: colors["surface"],
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.bell),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            container,
            ListTile(
              leading: const Icon(CupertinoIcons.home),
              title: const Text('Ana Sayfa'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.pencil),
              title: const Text('Özelleştirme'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.person),
              title: const Text('Kişisel'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
   ListTile(
  leading: const Icon(CupertinoIcons.settings),
  title: const Text('Ayarlar'),
  onTap: () {
    Navigator.pop(context);
    context.go('/settings');
  },
   ),








          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3,
              ),
              itemCount: 3,
              itemBuilder: (context, index) {
                List<String> titles = [
                  'Araç/Taşıt Sigortası',
                  'Gayrimenkul Sigortası',
                  'Sağlık Sigortası',
                ];

                List<Color> gridColors = [
                  Colors.blue.shade600,
                  Colors.blue.shade600,
                  Colors.blue.shade600,
                ];

                return Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: gridColors[index],
                    border: Border.all(color: Colors.blue),
                  ),
                  child: Center(
                    child: Text(
                      titles[index],
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 18, 137, 153),
        selectedItemColor: const Color.fromARGB(255, 18, 137, 153),
        unselectedItemColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Keşfet',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.clock),
            label: 'Geçmiş',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            context.go('/');
          } else if (index == 1) {
            context.go('/explore');
          } else if (index == 2) {
            context.go('/profile');
          } else if (index == 3) {
            context.go('/history');
          }
        },
      ),
    );
  }

  TextStyle newMethod(Map<String, Color> colors) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      backgroundColor: colors["surface"],
    );
  }
}
