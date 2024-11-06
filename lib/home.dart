import 'package:flutter/material.dart';
import 'kelola.dart';
import 'login.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Aksi yang ingin dilakukan saat menavigasi (misalnya pindah halaman)
    if (index == 1) {
      // Navigasi ke halaman Kelola Akun
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => KelolaPage()),
      );
    } else if (index == 2) {
      // Navigasi ke halaman Login (Logout)
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guest'),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Aksi untuk notifikasi
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Aksi untuk pengaturan
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Widget Grid View
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Widget Grid View',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
            SizedBox(height: 8),
            Container(
              height: 150, // Atur tinggi GridView horizontal
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    width: 120,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.play_circle_outline, size: 48),
                          SizedBox(height: 8),
                          Text("Artist"),
                          Text("Song"),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),

            // Widget List View
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Widget List View',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.play_circle_outline, size: 48),
                      title: Text("Headline"),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Description duis aute irure dolor in reprehenderit in volup..."),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(Icons.today, size: 16),
                              SizedBox(width: 4),
                              Text("Today"),
                              SizedBox(width: 8),
                              Text("23 min"),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.play_arrow),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Akun',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
      ),
    );
  }
}
