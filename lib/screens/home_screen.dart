import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      // AppBar
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.bell),
            onPressed: () {},
          ),
        ],
      ),

      // Drawer (Yan Menü)
      drawer: Drawer(
        child: Column(
          children: [
            // Drawer Header
            Container(
              height: 200,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    CupertinoIcons.person_circle,
                    size: 80,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Kullanıcı Adı',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            // Menü öğeleri
            ListTile(
              leading: const Icon(CupertinoIcons.home),
              title: const Text('Ana Sayfa'),
              onTap: () {
                Navigator.pop(context);  // Menüyü kapat
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.settings),
              title: const Text('Ayarlar'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            // Yeni Özelleştirme ve Kişisel menü öğeleri
            ListTile(
              leading: const Icon(CupertinoIcons.pencil),
              title: const Text('Özelleştirme'),
              onTap: () {
                Navigator.pop(context);
                // Özelleştirme sayfasına yönlendirme yapılabilir
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.person),
              title: const Text('Kişisel'),
              onTap: () {
                Navigator.pop(context);
                // Kişisel sayfasına yönlendirme yapılabilir
              },
            ),
          ],
        ),
      ),

      // Ana içerik
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 20),

            // 3 kutucuk
            GridView.builder(
              shrinkWrap: true,  // GridView'in boyutunu sınırlamak için
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,  // 2 sütun
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3,  // Kutucukların oranını ayarlıyoruz
              ),
              itemCount: 3, // Sadece 3 kutu olacak
              itemBuilder: (context, index) {
                List<String> titles = [
                  'Araç/Taşıt Sigortası',
                  'Gayrimenkul Sigortası',
                  'Sağlık Sigortası',
                ];

                List<Color> colors = [
                  Colors.blue.shade600,  // İlk kutu için açık mavi
                  Colors.blue.shade600,  // İkinci kutu için orta mavi
                  Colors.blue.shade600,  // Üçüncü kutu için koyu mavi
                ];

                return Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: colors[index],  // Her kutu için farklı mavi tonları
                    border: Border.all(color: Colors.blue),
                  ),
                  child: Center(
                    child: Text(
                      titles[index],  // Her kutuda farklı başlık
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,  // Yazı rengi beyaz
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

      // Alt navigasyon çubuğu
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 18, 137, 153),  
        selectedItemColor: const Color.fromARGB(255, 18, 137, 153),
        unselectedItemColor: const Color.fromARGB(255, 18, 137, 153),  
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
            // Ana sayfa, herhangi bir işlem yapma
          } else if (index == 1) {
            // Keşfet'e tıklandığında yeni bir sayfa açılır
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ExploreScreen()),
            );
          } else if (index == 2) {
            // Profil'e tıklandığında yeni bir sayfa açılır
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfileScreen()),
            );
          } else if (index == 3) {
            // Geçmiş'e tıklandığında yeni bir sayfa açılır
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HistoryScreen()),
            );
          }
        },
      ),
    );
  }
}

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

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      body: const Center(
        child: Text('Profil Ekranı', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

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
