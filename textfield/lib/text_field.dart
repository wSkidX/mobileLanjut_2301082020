import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Fitur TextField"),
        ),
        body: Center( // Removed 'const' keyword
          child: Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              autocorrect: false,
              autofocus: false,
              enableSuggestions: true,
              enableInteractiveSelection: false,
              // enabled: false,
              // obscureText: true,
              // obscuringCharacter: '=',
              keyboardType: TextInputType.phone,
              readOnly: false,
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person_add,
                  size: 35,
                ),
                hintText: "Silahkan input nama",
                labelText: "Full name",
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.person_add,
                  size: 35,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}