import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_it/logics/bloc/player_bloc.dart';
import 'package:score_it/ui/screens/home_screen_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PlayerBloc>(
          create: (context) => PlayerBloc(),
        ),
      ],
      child: _getScaffold(),
    );
  }

  Widget _getScaffold() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Score It!'),
      ),
      body: const HomeScreenLayout(),
      //floatingActionButton: const AddPlayerButtonWidget(),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
