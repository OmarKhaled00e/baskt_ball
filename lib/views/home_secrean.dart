import 'package:baskt_ball/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomeSecrean extends StatelessWidget {
  const HomeSecrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text('pointsCounter'),
      ),
      body: Column(
        children: [
          Text('Team A', style: TextStyle(fontSize: 42),),
          Text('0' ,style: TextStyle(fontSize: 150),),
          CustomButton(),
          CustomButton(),
          CustomButton(),
        ],
      )
    );
  }
}