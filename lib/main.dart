import 'package:cloud_ass4/stream2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/stream2': (context) => VideoPlayerScreen()},
      initialRoute: '/stream2',
    );
  }
}
