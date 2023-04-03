import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_it/data/models/player_model.dart';
import 'package:score_it/logics/bloc/player_bloc.dart';

class PlayerItem extends StatelessWidget {
  final int playerIndex;
  final PlayerModel player;
  final Color color;

  const PlayerItem({
    super.key,
    required this.playerIndex,
    required this.player,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 535,
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
          color: color,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _renderName(),
              _renderControlButtons(context),
            ],
          ),
        ),
        _renderRemovePlayer(context),
      ],
    );
  }

  Widget _renderName() {
    return Text(
      player.name,
      style: const TextStyle(
        fontSize: 30,
        color: Colors.black,
      ),
    );
  }

  Widget _renderControlButtons(context) {
    return Row(
      children: <Widget>[
        _renderDecrementScoreButton(context),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        ),
        _renderIncrementScoreButton(context),
        const Padding(
          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
        ),
        _renderScore(),
      ],
    );
  }

  Widget _renderDecrementScoreButton(context) {
    return IconButton(
      onPressed: () {
        BlocProvider.of<PlayerBloc>(context).add(
          PlayerScoreDecremented(
            playerIndex: playerIndex,
          ),
        );
      },
      icon: const Icon(Icons.remove_circle_rounded),
      iconSize: 40,
    );
  }

  Widget _renderIncrementScoreButton(context) {
    return IconButton(
      onPressed: () {
        BlocProvider.of<PlayerBloc>(context).add(
          PlayerScoreIncremented(
            playerIndex: playerIndex,
          ),
        );
      },
      icon: const Icon(Icons.add_circle_rounded),
      iconSize: 40,
    );
  }

  Widget _renderScore() {
    return Text(
      player.score.toString(),
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 50,
      ),
    );
  }

  Widget _renderRemovePlayer(context) {
    return IconButton(
      onPressed: () {
        BlocProvider.of<PlayerBloc>(context).add(
          PlayerRemoved(
            id: player.id,
          ),
        );
      },
      iconSize: 40,
      padding: const EdgeInsets.all(0),
      icon: const Icon(Icons.delete_outline),
    );
  }
}
