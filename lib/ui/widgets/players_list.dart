import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_it/logics/bloc/player_bloc.dart';
import 'package:score_it/ui/widgets/player_item.dart';

class PlayersList extends StatelessWidget {
  const PlayersList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerBloc, PlayerState>(
      builder: (context, state) {
        return state.players.isNotEmpty
            ? _renderListOfPlayers(state.players)
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

  Widget _renderListOfPlayers(players) {
    const List<Color> colors = [
      Colors.redAccent,
      Colors.indigoAccent,
      Colors.pinkAccent,
      Colors.greenAccent,
      Colors.orangeAccent,
    ];

    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return PlayerItem(
            playerIndex: index,
            player: players[index],
            color: colors[index],
          );
        },
        separatorBuilder: (_, __) => const SizedBox(
          height: 10,
        ),
        itemCount: players.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
      ),
    );
  }
}
