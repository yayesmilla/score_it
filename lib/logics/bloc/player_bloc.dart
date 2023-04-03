import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:score_it/data/models/player_model.dart';
import 'package:score_it/enums/load_status_enum.dart';

part 'player_event.dart';
part 'player_state.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  PlayerBloc() : super(const PlayerState(status: LoadStatusEnum.initial)) {
    on<PlayerAdded>(_mapPlayerAddedEventToState);
    on<PlayerRemoved>(_mapPlayerRemovedEventToState);
  }

  void _mapPlayerAddedEventToState(
      PlayerAdded event, Emitter<PlayerState> emit) async {
    final List<PlayerModel> players = List.from(state.players);

    //if (players.contains(event.name)) {
    // Do error check that the player name already exists
    //} else {
    final PlayerModel player;
    player = PlayerModel(
      id: state.players.length + 1,
      name: event.name.toUpperCase(),
      score: 0,
    );

    players.add(player);
    //}

    emit(
      state.copyWith(
        status: LoadStatusEnum.success,
        players: players,
      ),
    );
  }

  void _mapPlayerRemovedEventToState(
      PlayerRemoved event, Emitter<PlayerState> emit) async {
    final List<PlayerModel> players = List.from(state.players);

    players.removeWhere((player) => player.id == event.id);

    emit(
      state.copyWith(
        status: LoadStatusEnum.success,
        players: players,
      ),
    );
  }
}
