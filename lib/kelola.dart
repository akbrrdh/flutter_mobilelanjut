import 'package:flutter/material.dart';
import 'package:responsi_app/edit.dart';

class KelolaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akun'),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Informasi Profil
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Icon(Icons.person, size: 48, color: Colors.grey),
                  SizedBox(height: 8),
                  Text(
                    'Nama Lengkap',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Asal Universitas',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Menu Akun
            ListTile(
              title: Text('Kelola Akun'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Aksi untuk membuka halaman Kelola Akun
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditPage()),
                  );        
              },
            ),
            ListTile(
              title: Text('Notifikasi'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Aksi untuk membuka halaman Notifikasi
              },
            ),
            ListTile(
              title: Text('Privacy Policy'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Aksi untuk membuka halaman Privacy Policy
              },
            ),
            ListTile(
              title: Text('Terms of Service'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Aksi untuk membuka halaman Terms of Service
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Menandakan "Akun" sebagai tab aktif
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/home');
          } else if (index == 2) {
            Navigator.pushReplacementNamed(context, '/login');
          }
        },
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
