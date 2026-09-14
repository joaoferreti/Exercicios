import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Insert Image Example")),
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.network(
                  "https://picsum.photos/id/1015/800/600",
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 300,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.network(
                  "https://picsum.photos/id/1016/800/1000",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
