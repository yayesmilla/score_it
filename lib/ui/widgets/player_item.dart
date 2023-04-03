import 'package:flutter/material.dart';

class PlayerItem extends StatelessWidget {
  final String name;
  final int score;

  const PlayerItem({
    super.key,
    required this.name,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      color: Colors.lightBlue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _renderName(),
          _renderControlButtons('-'),
          //_renderControlButtons('+'),
          //
        ],
      ),
    );
  }

  Widget _renderName() {
    return Text(
      name,
      style: const TextStyle(
        fontSize: 30,
      ),
    );
  }

  Widget _renderControlButtons(control) {
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
      score.toString(),
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 50,
      ),
    );
  }
}
