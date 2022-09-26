import 'package:flutter/material.dart';


class TodoList extends StatelessWidget {
  const TodoList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // Navigate back to first route when tapped.
          Navigator.pop(context);
        },
        child: const Text('Go back!'),
      ),
    );
  }
}
