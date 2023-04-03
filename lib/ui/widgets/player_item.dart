import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_it/data/models/player_model.dart';
import 'package:score_it/logics/bloc/player_bloc.dart';

class PlayerItem extends StatelessWidget {
  final PlayerModel player;
  final Color color;

  const PlayerItem({
    super.key,
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
              _renderControlButtons(),
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

  Widget _renderControlButtons() {
    return Row(
      children: <Widget>[
        const Icon(
          Icons.remove_circle_rounded,
          size: 40,
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        ),
        const Icon(
          Icons.add_circle_rounded,
          size: 40,
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
        ),
        _renderScore(),
      ],
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
