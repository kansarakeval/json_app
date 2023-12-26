import 'package:flutter/material.dart';

class AlbumeScreen extends StatefulWidget {
  const AlbumeScreen({super.key});

  @override
  State<AlbumeScreen> createState() => _AlbumeScreenState();
}

class _AlbumeScreenState extends State<AlbumeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Albums"),
          centerTitle: true,
        ),
      ),
    );
  }
}
