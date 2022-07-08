import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peliculas en cines'),
        elevation: 0,
      ),
      body: Container(
        child: const Center(
          child: Text('Home Screen'),
        ),
      ),
    );
  }
}
