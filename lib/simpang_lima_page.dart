import 'package:flutter/material.dart';

class SimpangLimaPage extends StatelessWidget{
  const SimpangLimaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simpang Lima'),
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
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/images/simpanglima.jpg',
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Simpang Lima',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color:  Colors.purple,
                  ),
                ),
                const Text(
                  'Pusat keramaian dan kuliner kota',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on, color: Colors.red),
                    SizedBox(width: 6),
                    Text('Pusat Kota Semarang'),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.orange),
                    SizedBox(width: 6),
                    Text('Ramai saat malam dan pada akhir pekan'),
                  ],
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                }, 
                child: const Text('Kembali'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}