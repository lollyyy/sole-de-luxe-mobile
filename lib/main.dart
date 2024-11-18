import 'package:flutter/material.dart';
import 'package:sole_de_luxe/screens/login.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Sole de Luxe',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color.fromARGB(255, 2, 50, 34),
            secondary: const Color.fromARGB(255, 2, 50, 34),
          ),
        ),
        home: const LoginPage(),
      ),
    );
  }
}