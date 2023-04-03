import 'package:flutter/material.dart';
import 'package:score_it/ui/widgets/add_player_button.dart';
import 'package:score_it/ui/widgets/players_list.dart';

class HomeScreenLayout extends StatelessWidget {
  const HomeScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(80),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            AddPlayerButton(),
            PlayersList(),
          ],
        ),
      ),
    );
  }
}
