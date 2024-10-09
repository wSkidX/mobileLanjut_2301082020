import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void text() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fitur TextField"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              autocorrect: false,
              enableSuggestions: true,
              enableInteractiveSelection: false,
              // enabled: false,
              // obscureText: true,
              // obscuringCharacter: '=',
              keyboardType: TextInputType.phone,
              readOnly: true,
            ),
          ),
        ),
      ),
    );
  }
}