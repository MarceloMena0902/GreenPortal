import 'package:flutter/material.dart';
import 'package:green_portal/login.dart';
import 'package:green_portal/product.dart';
import 'package:green_portal/register.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Green Portal UWU',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: const TextTheme(
          headlineSmall: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
          titleLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 16.0, color: Colors.black),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => HomePage(),
        '/product': (context) => ProductPage(),
      },
    );
  }
  

}
