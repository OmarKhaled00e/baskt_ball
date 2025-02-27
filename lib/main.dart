import 'package:baskt_ball/views/home_secrean.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BasktBall());
}

class BasktBall extends StatelessWidget {
  const BasktBall({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeSecrean(),
    );
  }
}