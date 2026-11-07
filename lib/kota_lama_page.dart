import 'package:flutter/material.dart';

class KotaLamaPage extends StatelessWidget{
  const KotaLamaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kota Lama'),
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
                    'assets/images/kotalama.png',
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Kota Lama',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                const Text(
                  'Kawasan bangunan tua bergaya Eropa',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Icon(Icons.location_on, color: Colors.red),
                    SizedBox(width: 6),
                    Text('Kawasan Kota Lama, Semarang')
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.orange),
                    SizedBox(width: 6),
                    Text('Cocok untuk foto dan jalan santai'),
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