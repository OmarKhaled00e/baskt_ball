import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        maximumSize: Size(150, 50),
      ),
      onPressed: () {},
      child: const Text(
        'Add 1 Point',
        style: TextStyle(fontSize: 18, color: Colors.black),
      ),
    );
  }
}
