import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/pp.jpg'),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ananda Dharmawati',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Anandadharmawati@gmail.com',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text('Pengaturan Menstruasi'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                // Action when menstruation settings is tapped
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Beranda Saya'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                // Action when home icon is tapped
              },
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('Pengingat'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                // Action when reminder icon is tapped
              },
            ),
            ListTile(
              leading: Icon(Icons.insert_drive_file),
              title: Text('Ekspor Laporan untuk Doktermu'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                // Action when report icon is tapped
              },
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Ganti Bahasa'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                // Action when language icon is tapped
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Bantuan & Masukan'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                // Action when help icon is tapped
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Pengaturan'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                // Action when settings icon is tapped
              },
            ),
          ],
        ),
      ),
    );
  }
}
