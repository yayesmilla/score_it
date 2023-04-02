part of 'player_bloc.dart';

abstract class PlayerEvent extends Equatable {
  const PlayerEvent();

  @override
  List<Object> get props => [];
}

class PlayerAdded extends PlayerEvent {
  @override
  List<Object> get props => [];
}

class PlayerRemoved extends PlayerEvent {
  @override
  List<Object> get props => [];
}
