import 'package:flutter/material.dart';
import 'package:flutter_ui_skeleton/pages/home/page_home_data.dart';
import 'package:flutter_ui_skeleton/pages/home/page_home_skeleton.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter UI'),
        centerTitle: true,
      ),
      body: _isLoading ? const PageHomeSkeleton() : const PageHomeData(),
      floatingActionButton: ElevatedButton(
        onPressed: _tapButton,
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(), padding: const EdgeInsets.all(16)),
        child: Icon(
          _isLoading ? Icons.hourglass_empty : Icons.hourglass_full,
        ),
      ),
    );
  }

  _tapButton() => setState(() => _isLoading = !_isLoading);
}
