import 'package:flutter/material.dart';
import 'package:root/gallery_page.dart';
import 'package:root/home_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home page"),
      ),
      body: Center(
        child: Text(
          'home page', // Corrected typo
          style: TextStyle(fontSize: 50),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute( // Corrected to MaterialPageRoute
              builder: (context) {
                return GalleryPage(); // Corrected typo
              },
            ),
          );
        },
        child: Icon(Icons.arrow_right_alt),
      ),
    );
  }
}
