import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;

  const MyButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize:   Size(MediaQuery.of(context).size.width, 50),
          maximumSize: const Size(500, 50),
          side: const BorderSide(style: BorderStyle.solid)

        ),
        onPressed: () {},
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}