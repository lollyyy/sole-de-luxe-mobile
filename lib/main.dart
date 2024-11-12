import 'package:flutter/material.dart';
import 'package:sole_de_luxe/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sole de Luxe',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(255, 2, 50, 34), 
          secondary: const Color.fromARGB(255, 2, 50, 34), 
        ),
      ),
      home: MyHomePage(),
    );
  }
}