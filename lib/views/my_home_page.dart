import 'package:flutter/material.dart';
import 'package:next_flutter/views/todo_slist_page.dart';
import 'package:next_flutter/widgets/app_feature_card.dart';
import 'package:next_flutter/widgets/my_button_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(
                title: "Login",
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TodoList()),
                ),
              ),
              const Text(
                "Don't Have account?",
                style: TextStyle(color: Colors.grey),
              ),
              const MyButton(
                title: "SignUp",
              ),
              const MyAppFeatureCard()
            ],
          ),
        ),
    );
  }
}
