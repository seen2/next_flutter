import 'package:flutter/material.dart';
import 'package:next_flutter/navigation/my_home_tab.dart';
import 'package:next_flutter/views/login_page.dart';
import 'package:next_flutter/widgets/my_button_widget.dart';
import 'package:next_flutter/widgets/my_text_input.dart';

class MyRegisterPage extends StatefulWidget {
  const MyRegisterPage({super.key});

  @override
  State<MyRegisterPage> createState() => _MyRegisterPageState();
}

class _MyRegisterPageState extends State<MyRegisterPage> {
  String value = "";

  onChange(String value) {
    print("Value:$value");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            MyTextInput(
              onChange: onChange,
              labelText: "Full Name",
            ),
            MyTextInput(
              onChange: onChange,
              labelText: "E-Mail",
            ),
            MyTextInput(
              onChange: onChange,
              labelText: "Password",
              obsecureText: true,
            ),
            MyTextInput(
              onChange: onChange,
              labelText: "Confirm Password",
              obsecureText: true,
            ),
            MyButton(
              title: "Register",
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyTabNavigation()),
              ),
            ),
            const Text(
              "Don't Have account?",
              style: TextStyle(color: Colors.grey),
            ),
            MyButton(
              title: "Login",
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyLoginPage()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
