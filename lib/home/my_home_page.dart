import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_practice/home/bloc/counter_bloc.dart';

import 'bloc/counter_event.dart';
import 'bloc/counter_state.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CounterBloc(),
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Scaffold(
                appBar: AppBar(
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                  title: Text(title),
                ),
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'You have pushed the button this many times:',
                      ),
                      Text(
                        '${state.counter}',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
                ),
                floatingActionButton: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(DecrementCounter());
                      },
                      enableFeedback: false,
                      color: Colors.purple,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightElevation: 0,
                      elevation: 0,
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(IncrementCounter());
                      },
                      color: Colors.purple,
                      enableFeedback: false,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightElevation: 0,
                      elevation: 0,
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ) // This trailing comma makes auto-formatting nicer for build methods.
                );
          },
        ));
  }
}
