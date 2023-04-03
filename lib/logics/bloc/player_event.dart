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
  @override
  List<Object?> get props => [];
}
