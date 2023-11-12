import 'dart:async';
import 'package:first_app/login.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlingment = Alignment.bottomRight;

class Abertura extends StatelessWidget {
  const Abertura({super.key});

  @override
  Widget build(context) {
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginUser(),
          ),
        );
      },
    );
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(74, 229, 229, 0.992),
            Color.fromRGBO(225, 239, 239, 0.593)
          ],
          begin: startAlignment,
          end: endAlingment,
        ),
      ),
      child: Center(
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}
