import 'package:flutter/material.dart';
import 'package:navigation/page_satu.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageSatu()
    );
  }
} 