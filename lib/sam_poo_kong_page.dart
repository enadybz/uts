import 'package:flutter/material.dart';

class SamPooKongPage extends StatelessWidget{
  const SamPooKongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sam Poo Kong'),
      ),
      body: Container(
        color: Colors.blue.shade100,
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(16),
            padding: EdgeInsets.all(20),
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
                    'assets/images/sampookong.jpeg',
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Sam Poo Kong',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                const Text(
                  'Klenteng bersejarah bernuansa Tionghoa',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on, color: Colors.red),
                    SizedBox(width: 6),
                    Text('Simongan, Semarang'),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.orange),
                    SizedBox(width: 6),
                    Text('Warisan budaya Laksamana Cheng Ho'),
                  ],
                ),
                const SizedBox(height: 16),
                ElevatedButton(onPressed: (){
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