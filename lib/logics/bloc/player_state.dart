// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'player_bloc.dart';

class PlayerState extends Equatable {
  final LoadStatusEnum status;
  final List<PlayerModel> players;

  const PlayerState({
    this.status = LoadStatusEnum.initial,
    this.players = const [],
  });

  @override
  List<Object?> get props => [status, players];

  PlayerState copyWith({
    LoadStatusEnum? status,
    List<PlayerModel>? players,
  }) {
    return PlayerState(
      status: status ?? this.status,
      players: players ?? this.players,
    );
  }
}
