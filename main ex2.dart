import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Botões")),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              IconButtonColumn(icon: Icons.call, label: "CALL"),
              IconButtonColumn(icon: Icons.near_me, label: "ROUTE"),
              IconButtonColumn(icon: Icons.share, label: "SHARE"),
            ],
          ),
        ),
      ),
    );
  }
}

class IconButtonColumn extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconButtonColumn({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    final color = Colors.deepPurple[400];
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color, size: 40),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ],
    );
  }
}
