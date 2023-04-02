import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_it/logics/bloc/player_bloc.dart';

class PlayersListWidget extends StatelessWidget {
  const PlayersListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerBloc, PlayerState>(
      builder: (context, state) {
        return state.players.isNotEmpty
            ? _renderListOfPlayers()
            : _renderEmptyPlayers();
      },
    );
  }

  Widget _renderEmptyPlayers() {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text('No Current Players'),
    );
  }

  Widget _renderListOfPlayers() {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text('test players list'),
    );
  }
}
