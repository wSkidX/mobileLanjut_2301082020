import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final List<Container> myList = List.generate(
    1000,
    (index){
      return Container(
        color: Color.fromARGB(255,Random().nextInt(256),Random().nextInt(256),Random().nextInt(256))
      );
    },
  );
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Gridview"),
        ),
        body:GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 3,
            mainAxisSpacing: 10, // Ubah dari mainAxisExtent ke mainAxisSpacing
            childAspectRatio: 4/3
            ),
          children: myList,

        )),
        );
  }
}