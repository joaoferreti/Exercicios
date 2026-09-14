import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            "Flutter is Fun!",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(24.0),
          child: HiMomBox(),
        ),
      ),
    );
  }
}

class HiMomBox extends StatelessWidget {
  const HiMomBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      color: Colors.deepOrangeAccent,
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.all(8.0),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Hi Mom ",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Icon(Icons.wb_sunny, color: Colors.yellow, size: 18),
        ],
      ),
    );
  }
}
