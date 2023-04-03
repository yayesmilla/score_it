part of 'player_bloc.dart';

abstract class PlayerEvent extends Equatable {
  const PlayerEvent();

  @override
  List<Object?> get props => [];
}

class PlayerAdded extends PlayerEvent {
  final String name;

  const PlayerAdded({this.name = ''});

  @override
  List<Object?> get props => [name];
}

class PlayerRemoved extends PlayerEvent {
  final int? id;

  const PlayerRemoved({this.id});

  @override
  List<Object?> get props => [];
}

class PlayerScoreIncremented extends PlayerEvent {
  final int playerIndex;

  const PlayerScoreIncremented({
    this.playerIndex = 0,
  });

  @override
  List<Object?> get props => [];
}

class PlayerScoreDecremented extends PlayerEvent {
  final int playerIndex;

  const PlayerScoreDecremented({
    this.playerIndex = 0,
  });

  @override
  List<Object?> get props => [];
}
