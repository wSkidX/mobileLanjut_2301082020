import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("FittedBox"),
        ),
        body : Center(
          child: Container(
            color: Colors.blue,
            //width: 300,
            //height: 110,
            child: FittedBox(
              alignment: Alignment.center,
              child: Image.network("https://picsum.photos/id/237/200/300"),
            ),
          ),
        ),
      ),
    );
  }
}