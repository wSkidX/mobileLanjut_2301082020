import 'package:flutter/material.dart';
import 'package:route/gallery_page.dart';
import 'package:route/home_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      routes: {
        '/homepage': (context) => HomePage(),
        '/gallery': (context) => galleryPage(),
      },
    );
  }
}