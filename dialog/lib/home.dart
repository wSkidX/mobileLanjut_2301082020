import 'package:flutter/material.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  String data = "belum ada input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DIalog"),
      ),
      body: Center(
        child: Text(
          data,
          style: const TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("telah di klik");
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("OK"),
                content: const Text("apakah di hapus?"),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      setState(() {
                        data = "true";
                      });
                    },
                    child: const Text("Yes"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("No"),
                  ),
                ],
              );
            },
          ).then((value) => print(value));
        },
        child: const Icon(Icons.delete), // Corrected here
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // Corrected here
    );
  }
}
