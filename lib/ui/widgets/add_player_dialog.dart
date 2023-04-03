// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_it/logics/bloc/player_bloc.dart';

class AddPlayerDialogWidget extends StatefulWidget {
  const AddPlayerDialogWidget({
    super.key,
  });

  @override
  State<AddPlayerDialogWidget> createState() => _AddPlayerDialogWidgetState();
}

class _AddPlayerDialogWidgetState extends State<AddPlayerDialogWidget> {
  final TextEditingController textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //return StatefulBuilder(builder: (context2, setState) {
    //   print(context2);

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _renderNameInput(),
          _renderButtons(context),
          const Padding(
            padding: EdgeInsets.all(15),
          ),
        ],
      ),
    );
  }

  Widget _renderNameInput() {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: TextField(
        controller: textController,
        decoration: const InputDecoration(
          labelText: 'Name',
          labelStyle: TextStyle(
            color: Colors.grey,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          border: OutlineInputBorder(),
        ),
        style: const TextStyle(
          color: Colors.white,
        ),
        cursorColor: Colors.white,
      ),
    );
  }

  Widget _renderButtons(context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 30, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _renderCancelButton(context),
          const SizedBox(
            width: 10,
          ),
          _renderAddButton(context),
        ],
      ),
    );
  }

  Widget _renderAddButton(context) {
    /* return BlocBuilder<PlayerBloc, PlayerState>(
      builder: (context, state) { */
    return CupertinoButton(
      color: Colors.green,
      child: const Text('Add This Player'),
      onPressed: () {
        BlocProvider.of<PlayerBloc>(context).add(
          PlayerAdded(
            name: textController.text,
          ),
        );
        Navigator.of(context).pop();
      },
    );
    //},
    //);
  }

  Widget _renderCancelButton(context) {
    return CupertinoButton(
      color: Colors.grey,
      child: const Text('Cancel'),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}
