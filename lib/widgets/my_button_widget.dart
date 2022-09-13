import 'package:flutter/material.dart';


class MyButton extends StatelessWidget {

  final String title;

   const MyButton({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    return ElevatedButton(
            style: const ButtonStyle(),
            onPressed: () {},
            child:  Text(title),
          );
  }
}
