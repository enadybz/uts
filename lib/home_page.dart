import 'package:flutter/material.dart';
import 'lawang_sewu_page.dart';
import 'kota_lama_page.dart';
import 'sam_poo_kong_page.dart';
import 'simpang_lima_page.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Semarang'),
      ),
      body: Container(
        color: Colors.blue.shade100,
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white, 
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  offset: Offset(0, 4)
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/semarang.jpeg',
                  width: 300,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on, color: Colors.blue),
                    SizedBox(width: 6),
                    Text(
                      'Jelajah Semarang',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                const Text(
                  'Pilih tempat wisata favoritmu',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: 280,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => LawangSewuPage(),
                      ),
                    );
                  }, 
                  child: const Text('Lawang Sewu'),
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: 280,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => const KotaLamaPage(),
                        ),
                      );
                    } 
                  , child: const Text('Kota Lama'),
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: 280,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => const SamPooKongPage(),
                        ),
                      );
                    } 
                  , child: const Text('Sam Poo Kong'),
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: 280,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => const SimpangLimaPage(),
                        ),
                      );
                    } 
                  , child: const Text('Simpang Lima'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}