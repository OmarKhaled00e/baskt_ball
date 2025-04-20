import 'package:baskt_ball/cubit/counter_cubit.dart';
import 'package:baskt_ball/cubit/counter_state.dart';
import 'package:baskt_ball/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},

      builder: (context, state) {
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
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                        style: TextStyle(fontSize: 85),
                      ),
                      SizedBox(height: 24),
                      CustomButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).TeamIncrement(team: 'A', buttonNumber: 1);
                        },
                        text: 'Add 1 Point',
                      ),
                      SizedBox(height: 24),
                      CustomButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).TeamIncrement(team: 'A', buttonNumber: 2);
                        },
                        text: 'Add 2 Point',
                      ),
                      SizedBox(height: 24),
                      CustomButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).TeamIncrement(team: 'A', buttonNumber: 3);
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
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                        style: TextStyle(fontSize: 85),
                      ),
                      SizedBox(height: 24),
                      CustomButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).TeamIncrement(team: 'B', buttonNumber: 1);
                        },
                        text: 'Add 1 Point',
                      ),
                      SizedBox(height: 24),
                      CustomButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).TeamIncrement(team: 'B', buttonNumber: 2);
                        },
                        text: 'Add 2 Point',
                      ),
                      SizedBox(height: 24),
                      CustomButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).TeamIncrement(team: 'B', buttonNumber: 3);
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
                  BlocProvider.of<CounterCubit>(context).reset();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
