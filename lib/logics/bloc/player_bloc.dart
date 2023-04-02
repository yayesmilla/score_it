import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:score_it/data/models/player_model.dart';
import 'package:score_it/enums/load_status_enum.dart';

part 'player_event.dart';
part 'player_state.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  PlayerBloc() : super(const PlayerState()) {
    on<PlayerAdded>(_mapPlayerAddedEventToState);
  }

  void _mapPlayerAddedEventToState(
      PlayerAdded event, Emitter<PlayerState> emit) async {
    emit(
      state.copyWith(
        status: LoadStatusEnum.success,
      ),
    );
  }
}
