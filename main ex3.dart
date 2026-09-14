import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Stack & Positioned Widget")),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: ColorBox(color: Colors.green, label: "Green"),
              ),
              Positioned(
                top: 30,
                left: 20,
                child: ColorBox(color: Colors.red, label: "Red"),
              ),
              Positioned(
                top: 60,
                left: 40,
                child: ColorBox(color: Colors.purple, label: "Purple"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  final Color color;
  final String label;

  const ColorBox({super.key, required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      color: color,
      padding: const EdgeInsets.all(8.0),
      alignment: Alignment.topLeft,
      child: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
