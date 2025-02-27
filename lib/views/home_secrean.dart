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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('Team A', style: TextStyle(fontSize: 42)),
                  Text('0', style: TextStyle(fontSize: 150)),
                  SizedBox(height: 24),
                  CustomButton(onPressed: () {}, text: 'Add 1 Point'),
                  SizedBox(height: 24),
                  CustomButton(onPressed: () {}, text: 'Add 2 Point'),
                  SizedBox(height: 24),
                  CustomButton(onPressed: () {}, text: 'Add 3 Point'),
                ],
              ),
              SizedBox(
                height: 540,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                  endIndent: 30,
                  indent: 30,
                ),
              ),
              Column(
                children: [
                  Text('Team B', style: TextStyle(fontSize: 42)),
                  Text('0', style: TextStyle(fontSize: 150)),
                  SizedBox(height: 24),
                  CustomButton(onPressed: () {}, text: 'Add 1 Point'),
                  SizedBox(height: 24),
                  CustomButton(onPressed: () {}, text: 'Add 2 Point'),
                  SizedBox(height: 24),
                  CustomButton(onPressed: () {}, text: 'Add 3 Point'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 64),
          CustomButton(text: 'Resents', onPressed: () {}),
        ],
      ),
    );
  }
}
