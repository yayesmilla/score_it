import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddPlayerDialogWidget extends StatelessWidget {
  const AddPlayerDialogWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
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
    return const Padding(
      padding: EdgeInsets.all(30),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Name',
        ),
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
          _renderAddButton(),
        ],
      ),
    );
  }

  Widget _renderAddButton() {
    return CupertinoButton(
      color: Colors.green,
      child: const Text('Add This Player'),
      onPressed: () {},
    );
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
