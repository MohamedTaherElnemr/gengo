import 'package:flutter/material.dart';
import 'package:gengo_app/screens/Home_Page.dart';

void main() {
  runApp(GengoApp());
}

class GengoApp extends StatelessWidget {
  const GengoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
