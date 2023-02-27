import 'package:flutter/material.dart';
import 'pages/login_page.dart';

class Barber extends StatelessWidget {
  const Barber({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Barbearia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
      ),
      home:  LoginPage(),
    );
  }
}