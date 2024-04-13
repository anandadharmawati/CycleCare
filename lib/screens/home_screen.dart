import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(24.0),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 243, 33, 198),
                    Color.fromARGB(240, 250, 39, 162)
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hari ke-13 dari fase luteal',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/contoh.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Prediksi Gejala',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const Text(
                    'Kadar hormon estrogen yang rendah kembali memengaruhi daya ingatmu, membuatmu terkadang menjadi pelupa.',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildPrediksiGejala('Mudah Lupa', 'assets/images/lupa.png'),
                      _buildPrediksiGejala('Rasa Cemas', 'assets/images/cemas.png'),
                      _buildPrediksiGejala('Sulit Tidur', 'assets/images/susahtidur.png'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Perubahan dalam Keputihan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const Text(
                    'Beberapa hari sebelum fase luteal segera berakhir, keputihan mungkin semakin berkurang. Teksturnya menjadi kering dan warnanya putih dan sedikit kekuningan.',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _buildPerubahan('Kering', 'assets/images/kering.png'),
                        _buildPerubahan('Kental', 'assets/images/kental.png'),
                        _buildPerubahan('Agak kental', 'assets/images/agakkental.png'),
                        _buildPerubahan('Berair', 'assets/images/berair.png'),
                        _buildPerubahan('Bening', 'assets/images/bening.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container( // Tambahkan Container di sini
                      color: Color.fromARGB(255, 243, 33, 198), // Warna latar belakang
                      padding: EdgeInsets.all(8.0), // Padding untuk teks
                      child: const Text( // Tambahkan Container di sini
                        'PANDUAN UNTUK MENGHADAPI FASE LUTEAL',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white, // Warna teks
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Pengetahuan Masa Pramenstruasi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    const Text(
                      'Biasanya, ketidaknyamanan pada tubuh dan perubahan suasana hati yang disebabkan oleh PMS akan hilang setelah menstruasi tetapi jika gejalanya sangat mempengaruhi kehidupan sehari-hari, sebaiknya segera temui dokter.',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Tips Untuk Pola Makan yang Sehat',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    const Text(
                      'Sebelum menstruasi, kamu mungkin mengalami retensi air dan natrium karena perubahan hormon dalam tubuhmu. Tubuh, terutama tungkai, rentan terhadap pembengkakan jaringan. Saat ini kamu bisa makan lebih banyak makanan yang kaya akan ion kalium.',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Tips Untuk Menjaga Kebugaran Tubuh',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    const Text(
                      'Jika kamu mudah depresi beberapa hari sebelum menstruasi, kamu bisa mengajak temanmu olahraga bersama, seperti bulu tangkis, senam aerobik dan lainnya, atau melakukan interaksi sosial yang bisa membantumu merasa lebih tenang.',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Tips Untuk Perawatan Kulit',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    const Text(
                      'Menjelang menstruasi, kadar air kulit akan berkurang. Kamu bisa menggunakan beberapa produk perawatan kulit yang mengandung gliserin, asam hialuronat dan bahan lainnya untuk mengembalikan kelembapan kulit.',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Tips Agar Tidur Nyenyak',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    const Text(
                      'Setelah ovulasi dan sebelum menstruasi, suhu tubuhmu akan sedikit meningkat. Jika hal ini memengaruhi tidurmu, kamu dapat menyesuaikan suhu kamar tidur menjadi sedikit lebih rendah dari biasanya, atau menggunakan selimut yang lebih tipis.',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildPrediksiGejala(String title, String imagePath) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Color.fromARGB(255, 243, 33, 198),
          backgroundImage: AssetImage(imagePath),
        ),
        const SizedBox(height: 8),
        Text(title),
      ],
    );
  }

  Widget _buildPerubahan(String title, String imagePath) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Color.fromARGB(255, 243, 33, 198),
            backgroundImage: AssetImage(imagePath),
          ),
        ),
        const SizedBox(height: 1),
        Text(title),
      ],
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}