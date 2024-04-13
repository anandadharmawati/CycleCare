import 'package:flutter/material.dart';
import 'package:cycle_care/screens/konseling_screen.dart';

class CatatanScreen extends StatefulWidget {
  const CatatanScreen({Key? key}) : super(key: key);

  @override
  _CatatanScreenState createState() => _CatatanScreenState();
}

class _CatatanScreenState extends State<CatatanScreen> {
  bool menstruationChecked = false; // Menambahkan variabel untuk menandai pemeriksaan menstruasi

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${DateTime.now().month}/${DateTime.now().year}'), // Bulan dan tahun saat ini
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          // Tambahkan fungsi untuk melacak menstruasi
                        },
                        child: const Row(
                          children: [
                            Text('Lacak Menstruasi Saya'),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => KonselingScreen()),
                          );
                        },
                        child: const Row(
                          children: [
                            Text('Konseling'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Image.asset('assets/images/calendar1.png'), // Ganti 'assets/images/calendar.png' dengan path gambar kalender Anda
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 7),
                Icon(Icons.access_alarm),
                const SizedBox(width: 4),
                Text('Menstruasi Datang'),
                const SizedBox(width: 100),
                TextButton(
                  onPressed: () {
                    // Add functionality for button press (e.g., set menstruationChecked to true)
                  },
                  child: const Text('Ya'),
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 243, 33, 198),
                  ),
                ),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () {
                    // Add functionality for button press (e.g., set menstruationChecked to false)
                  },
                  child: const Text('Tidak'),
                ),
              ],
            ),
            buildRow('Suhu Tubuh', Icons.thermostat_outlined),
            buildRow('Berat Badan', Icons.timeline),
            buildRowWithMoodIcons('Suasana Hati'),
            buildRow('Buku Harian', Icons.book),
            buildRow('Buku Kebiasaan', Icons.assignment_turned_in),
            buildRow('Keputihan', Icons.warning),
            buildRow('Gejala', Icons.warning_amber),
          ],
        ),
      ),
    );
  }

  Widget buildRow(String text, IconData iconData, [bool? isChecked]) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(iconData), // Ikon
          const SizedBox(width: 10),
          Expanded(child: Text(text)), // Teks
        ],
      ),
    );
  }

  Widget buildRowWithMoodIcons(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Icon(Icons.mood), // Ikon
          const SizedBox(width: 10),
          Expanded(child: Text(text)), // Teks
          const Row(
            children: [
              Icon(Icons.sentiment_dissatisfied), // Ikon
              Icon(Icons.sentiment_neutral), // Ikon
              Icon(Icons.sentiment_satisfied), // Ikon
              Icon(Icons.sentiment_very_satisfied), // Ikon
              Icon(Icons.mood_bad), // Ikon
            ],
          ),
        ],
      ),
    );
  }
}
