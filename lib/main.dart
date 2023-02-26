
import 'package:barber_shop/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Barber());

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
      home: const LoginPage(),
    );
  }
}
