import 'package:flutter/material.dart';
import 'package:cycle_care/dto/News.dart';
import 'package:cycle_care/services/data_services.dart';

class InputApi extends StatefulWidget {
  final News? news;

  const InputApi({Key? key, this.news}) : super(key: key);

  @override
  State<InputApi> createState() => _InputApiState();
}

class _InputApiState extends State<InputApi> {
  final TextEditingController _simpanDataTitle = TextEditingController();
  final TextEditingController _simpanDataBody = TextEditingController();

  late bool _isEditing;
  late String _id;

  _InputApiState() {
    _isEditing = false;
  }

  @override
  void initState() {
    super.initState();
    if (widget.news != null) {
      _isEditing = true;
      _id = widget.news!.id;
      _simpanDataTitle.text = widget.news!.title;
      _simpanDataBody.text = widget.news!.body;
    } else {
      _isEditing = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_isEditing ? 'Edit' : 'Post'),
        backgroundColor: const Color.fromARGB(255, 243, 33, 198),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 30),
            TextField(
              controller: _simpanDataTitle,
              decoration: InputDecoration(
                labelText: 'Masukkan Title',
                border: OutlineInputBorder(),
                hintText: 'Title',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _simpanDataBody,
              decoration: InputDecoration(
                labelText: 'Masukkan Body',
                border: OutlineInputBorder(),
                hintText: 'Body',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                if (_isEditing) {
                  DataServices.updateData(
                    _id,
                    _simpanDataTitle.text,
                    _simpanDataBody.text,
                  );
                } else {
                  DataServices.sendNews(
                    _simpanDataTitle.text,
                    _simpanDataBody.text,
                  ); // Ubah pemanggilan dari postEvent menjadi sendNews
                }
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.send),
              label: Text(_isEditing ? 'Update' : 'Post'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 243, 33, 198),
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
            ),
            if (_isEditing)
              TextButton(
                onPressed: () {
                  DataServices.deleteData(_id);
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Delete',
                  style: TextStyle(color: Colors.red),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
  