import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_it/logics/bloc/player_bloc.dart';
import 'package:score_it/ui/widgets/add_player_dialog.dart';

class AddPlayerButton extends StatelessWidget {
  const AddPlayerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton.filled(
          onPressed: () {
            _showCustomDialog(context);
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              Icon(CupertinoIcons.person_badge_plus_fill),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Text('Add Player'),
            ],
          )),
    );
  }

  void _showCustomDialog(superContext) {
    showDialog(
      context: superContext,
      builder: (_) {
        return BlocProvider.value(
          value: BlocProvider.of<PlayerBloc>(superContext),
          child: const AddPlayerDialogWidget(),
        );
      },
    );
  }
}
