import 'package:flutter/material.dart';

class PageSatu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body:Center(child: Text("ini page 2"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).pop();
      },child: Icon(Icons.keyboard_arrow_left)),
      );
  }
}