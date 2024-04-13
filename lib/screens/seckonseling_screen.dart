import 'package:flutter/material.dart';

class SecKonselingScreen extends StatelessWidget {
  const SecKonselingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'CycleCare Smart Chat',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 243, 33, 198),
          leading: IconButton(
            icon: Icon(Icons.arrow_back), // Icon kembali
            onPressed: () {
              Navigator.pop(context); // Kembali ke halaman sebelumnya
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Recommended Chat',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 160,
                child: ListView(
                  padding: EdgeInsets.only(left: 16),
                  children: const [
                    ChatItem(
                      imagePath: 'assets/images/fertility.jpg',
                      name: 'Fertility Guide',
                      description: 'Welcome to cycle care!',
                    ),
                    ChatItem(
                      imagePath: 'assets/images/ovulation.jpg',
                      name: 'Ovulation Testing',
                      description:
                          'Let\'s talk about ovulation tests and how you can find when you will ovulate',
                    ),
                  ],
                ),
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Trending Chats',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 500,
                child: ListView(
                  padding: EdgeInsets.only(left: 16),
                  children: const [
                    ChatItem(
                      imagePath: 'assets/images/mucus.jpg',
                      name: 'Cervical Mucus',
                      description:
                          'Let\'s chat about how tracking discharge changes can skyrocket your chances of ...',
                    ),
                    ChatItem(
                      imagePath: 'assets/images/cramping.jpg',
                      name: 'Cramping',
                      description:
                          'Discover how understanding cramps can help you on your journey to pregnancy',
                    ),
                    ChatItem(
                      imagePath: 'assets/images/sex.jpg',
                      name: 'Sex',
                      description:
                          'How to time intercourse to get pregnant',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imagePath;
  final String name;
  final String description;

  const ChatItem({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imagePath),
            radius: 30,
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 4),
                Text(
                  description,
                  textAlign: TextAlign.left,
                  softWrap: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
