import 'package:flutter/material.dart';
import 'package:flutter_warnet/entry_warnet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Warnet App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EntryWarnetForm(),
    );
  }
}
