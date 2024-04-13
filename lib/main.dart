import 'package:cycle_care/components/My_button.dart';
import 'package:cycle_care/components/My_textfield.dart';
import 'package:flutter/material.dart';
import 'package:cycle_care/screens/home_screen.dart';
import 'package:cycle_care/screens/catatan_screen.dart';
import 'package:cycle_care/screens/profile_screen.dart';
import 'package:cycle_care/screens/konseling_screen.dart';
import 'package:cycle_care/screens/seckonseling_screen.dart';
import 'package:cycle_care/screens/news_feed.dart';
import 'package:cycle_care/screens/harian_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class LoginPage extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  void signUserIn(BuildContext context) {
    String username = usernameController.text.trim();
    String password = passwordController.text.trim();

    if (username == 'anandadharmawati@gmail.com' && password == 'nanda') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage(title: 'Home Screen')),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Username atau password salah.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  void signUserUp() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('CycleCare'),
        backgroundColor: Color.fromARGB(255, 243, 33, 198),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 200,
                height: 200,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Welcome!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              MyTextfield(
                controller: usernameController,
                hintText: 'Username / Account',
                obscureText: false,
              ),
              SizedBox(
                height: 10,
              ),
              MyTextfield(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Lupa Password?',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              MyButton(
                onTap: () => signUserIn(context),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Tidak Punya Akun?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.black,
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // ElevatedButton(
              //   onPressed: () {
              //     // Navigasi ke halaman utama setelah login berhasil
              //     Navigator.pushReplacement(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => MyHomePage(title: 'Home Screen')),
              //     );
              //   },
              //   child: Text('Login'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const CatatanScreen(),
    const ProfileScreen(),
    const KonselingScreen(),
    const SecKonselingScreen(),
  ];

  final List<String> _appBarTitles = const [
    'Hari Ini',
    'Catatan',
    'Saya',
  ]; // List of titles corresponding to each screen

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitles[_selectedIndex]),
      ),
      body: _screens[_selectedIndex],
      drawer: Drawer(
        child: Material( // Tambahkan Material di sini
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 243, 33, 198),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/pp.jpg'),
                      radius: 45,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'anandadharmawati@gmail.com',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text('Ananda'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>  NewsFeed()),
                  );
                },
              ),
              ListTile(
                title: Text('Buku Harian'),
                leading: Icon(Icons.book),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>  HarianScreen()),
                  );
                },
              ),
              ListTile(
                title: Text('Tahun Kelahiran'),
                leading: Icon(Icons.calendar_today),
                trailing: Icon(Icons.arrow_right),
              ),
              ListTile(
                leading: Icon(Icons.language),
                title: Text('Ganti Bahasa'),
                trailing: Icon(Icons.arrow_right),
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Bantuan & Masukan'),
                trailing: Icon(Icons.arrow_right),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Pengaturan'),
                trailing: Icon(Icons.arrow_right),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>  LoginPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.notes), // Ganti dengan ikon untuk Hari Ini
            label: 'Hari Ini', // Ganti label dengan 'Hari Ini'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.today), // Ganti dengan ikon untuk Catatan
            label: 'Catatan', // Ganti label dengan 'Catatan'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), // Tetapkan ikon untuk Saya
            label: 'Saya', // Ganti label dengan 'Saya'
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 243, 33, 198),
        onTap: _onItemTapped,
      ),
    );
  }
}
