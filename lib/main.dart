import 'package:flutter/material.dart';
import 'package:flutter_ui_skeleton/pages/home/page_home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: const PageHome(),
      theme: ThemeData.dark(),
    );
  }
}
