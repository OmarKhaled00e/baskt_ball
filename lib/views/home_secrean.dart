import 'package:baskt_ball/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomeSecrean extends StatefulWidget {
  const HomeSecrean({super.key});

  @override
  State<HomeSecrean> createState() => _HomeSecreanState();
}

class _HomeSecreanState extends State<HomeSecrean> {
  int teamAPoints = 0;

  int teamBPoints = 0;
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
                  Text('$teamAPoints', style: TextStyle(fontSize: 85)),
                  SizedBox(height: 24),
                  CustomButton(
                    onPressed: () {
                      setState(() {
                        teamAPoints++;
                      });
                    },
                    text: 'Add 1 Point',
                  ),
                  SizedBox(height: 24),
                  CustomButton(
                    onPressed: () {
                      setState(() {
                        teamAPoints += 2;
                      });
                    },
                    text: 'Add 2 Point',
                  ),
                  SizedBox(height: 24),
                  CustomButton(
                    onPressed: () {
                      setState(() {
                        teamAPoints += 3;
                      });
                    },
                    text: 'Add 3 Point',
                  ),
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
                  Text('$teamBPoints', style: TextStyle(fontSize: 85)),
                  SizedBox(height: 24),
                  CustomButton(
                    onPressed: () {
                      setState(() {
                        teamBPoints++;
                      });
                    },
                    text: 'Add 1 Point',
                  ),
                  SizedBox(height: 24),
                  CustomButton(
                    onPressed: () {
                      setState(() {
                        teamBPoints += 2;
                      });
                    },
                    text: 'Add 2 Point',
                  ),
                  SizedBox(height: 24),
                  CustomButton(
                    onPressed: () {
                      setState(() {
                        teamBPoints += 3;
                      });
                    },
                    text: 'Add 3 Point',
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 64),
          CustomButton(
            text: 'Resents',
            onPressed: () {
              setState(() {
                teamAPoints = 0;
                teamBPoints = 0;
              });
            },
          ),
        ],
      ),
    );
  }
}
