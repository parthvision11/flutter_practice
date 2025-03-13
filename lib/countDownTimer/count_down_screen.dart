import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/count_down_bloc.dart';
import 'bloc/count_down_state.dart';

class CountdownScreen extends StatelessWidget {
  const CountdownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CountdownBloc(),
      child: BlocBuilder<CountdownBloc, CountdownState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(title: const Text("Countdown Timer")),
            body: Center(
              child: Text(
                (state is CountdownTimerState) ? state.formattedTime : "0s",
                style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            floatingActionButton: MaterialButton(
              onPressed: () {
                context.read<CountdownBloc>().startTimerEvent();
              },
              child: Text("Restart Timer"),
            ),
          );
        },
      ),
    );
  }
}
