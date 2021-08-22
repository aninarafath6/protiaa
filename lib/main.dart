import 'package:flutter/material.dart';
import 'package:protiaa_codex/views/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'protiaa',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
