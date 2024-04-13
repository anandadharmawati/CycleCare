import 'package:flutter/material.dart';
import 'package:cycle_care/screens/seckonseling_screen.dart';

class KonselingScreen extends StatelessWidget {
  const KonselingScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cycle Care Smart Chat',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 243, 33, 198),
          ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png', // Lokasi gambar di assets
              width: 300, // Lebar gambar
              height: 300, // Tinggi gambar
            ),// Spasi vertikal
            const Text(
              'Selamat datang di\nCycleCare Smart Chat!', // Teks sambutan
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20), // Spasi vertikal
            const Text(
              'Kami adalah asisten cerdas yang siap membantu\nAnda dengan perawatan kesehatan Anda. '
              '\nSilakan mulai percakapan dengan kami untuk mendapatkan informasi dan dukungan\nyang Anda butuhkan.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20), // Spasi vertikal
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SecKonselingScreen()),
                ); // Implementasi aksi ketika tombol ditekan (misalnya, membuka percakapan chat)
              },
              style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 243, 33, 198), // Ubah warna latar belakang menjadi pink
              ),
              child: const Text(
                'Mulai Percakapan',
                style: TextStyle(color: Colors.white), 
                ),
            ),
          ],
        ),
      ),
    );
  }
}
