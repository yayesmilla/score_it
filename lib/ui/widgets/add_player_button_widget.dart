import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_it/logics/bloc/player_bloc.dart';
import 'package:score_it/ui/widgets/add_player_dialog.dart';

class AddPlayerButtonWidget extends StatelessWidget {
  const AddPlayerButtonWidget({super.key});

  @override
  /* Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        // Add your onPressed code here!
      },
      label: const Text('Add Player'),
      icon: const Icon(Icons.add_reaction_rounded),
      backgroundColor: const Color.fromARGB(255, 23, 192, 26),
      foregroundColor: Colors.white,
    );
  } */
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton.filled(
          onPressed: () {
            //context.read<PlayerBloc>().add(PlayerAdded());
            //const AddPlayerDialogWidget();
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

  void _showCustomDialog(context) {
    showDialog(
      context: context,
      builder: (context) => const AddPlayerDialogWidget(),
    );
  }
}
