import 'package:flutter/material.dart';
import 'package:navigation/page_dua.dart';

class PageSatu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body:Center(child: Text("ini page 1"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context){
            return PageDua();
          },)
        );
      },child: Icon(Icons.keyboard_arrow_right)),
      );
  }
}