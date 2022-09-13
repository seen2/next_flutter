import 'package:flutter/material.dart';
import 'package:next_flutter/widgets/my_button_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color.fromARGB(255, 189, 130, 2),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              MyButton(title: "Login"),
              SizedBox(
                width: 10,
              ),
              MyButton(
                title: "SignUp",
              )
            ],
          ),
        ),
      ),
    );
  }
}
