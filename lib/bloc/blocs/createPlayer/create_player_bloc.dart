import 'package:flutter_bloc/flutter_bloc.dart';

import 'create_player_event.dart';
import 'create_player_state.dart';

class CreatePlayerBloc extends Bloc<CreatePlayerEvent, CreatePlayerState> {

  bool isSwitched = false;

  CreatePlayerBloc() : super(CreatePlayerInitial()) {

    on<ToggleSwitchEvent>((event, emit) {
      isSwitched = !isSwitched;
      emit(SwitchState()); // Toggle state
    });
  }
}
