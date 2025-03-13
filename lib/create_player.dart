import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_practice/bloc/blocs/createPlayer/create_player_bloc.dart';
import 'package:flutter_practice/bloc/blocs/createPlayer/create_player_state.dart';

import 'bloc/blocs/createPlayer/create_player_event.dart';

class CreatePlayer extends StatelessWidget {
  const CreatePlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CreatePlayerBloc(),
        child: BlocBuilder<CreatePlayerBloc, CreatePlayerState>(builder: (context, state) {
          CreatePlayerBloc _createPlayerBloc = BlocProvider.of<CreatePlayerBloc>(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text("Create Player"),
            ),
            body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Switch(
                    value: _createPlayerBloc.isSwitched,
                    onChanged: (value) {
                      _createPlayerBloc.add(ToggleSwitchEvent());
                    },
                  ),
                ],
              ),
            ),
          );
        }));
  }
}
