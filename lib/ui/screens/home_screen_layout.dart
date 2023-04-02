import 'package:flutter/material.dart';
import 'package:score_it/ui/widgets/add_player_button_widget.dart';
import 'package:score_it/ui/widgets/players_list_widget.dart';

class HomeScreenLayout extends StatelessWidget {
  const HomeScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          AddPlayerButtonWidget(),
          PlayersListWidget(),
        ],
      ),
    );
  }
}
