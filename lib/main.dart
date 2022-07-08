import 'package:flutter/material.dart';
import 'package:peliculas_app/screens/details_screen.dart';
import 'package:peliculas_app/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peliculas',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (_) => HomeScreen(),
        'details': (_) => DetailsScreen(),
      },
    );
  }
}
