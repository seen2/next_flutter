import 'package:flutter/material.dart';
import 'package:next_flutter/views/registration_page.dart';
import 'package:next_flutter/views/todo_slist_page.dart';
import 'package:next_flutter/widgets/my_button_widget.dart';
class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login"),),
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
               MyButton(
                title: "SignUp",
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyRegisterPage()),
                ),
              ),
            ],
          ),
        ),
    );
  }
}