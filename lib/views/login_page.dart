import 'package:flutter/material.dart';
import 'package:next_flutter/navigation/my_home_tab.dart';
import 'package:next_flutter/views/registration_page.dart';
import 'package:next_flutter/widgets/my_button_widget.dart';
import 'package:next_flutter/widgets/my_text_input.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  String value = "";

  onChange(String value) {
    print("Value:$value");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
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
            MyButton(
              title: "Login",
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
