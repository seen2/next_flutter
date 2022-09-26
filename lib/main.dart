import 'package:flutter/material.dart';
import 'package:next_flutter/navigation/route_names.dart';
import 'package:next_flutter/views/login_page.dart';
import 'package:next_flutter/views/my_home_page.dart';
import 'package:next_flutter/views/registration_page.dart';
import 'package:next_flutter/views/todo_details.dart';
import 'package:next_flutter/views/todo_slist_page.dart';
import 'package:next_flutter/views/user_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color.fromARGB(255, 189, 130, 2),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      initialRoute: "/",
      routes: {
        "/${Routes.login.toString()}": (context) => const MyLoginPage(),
        "/${Routes.register.toString()}": (context) => const MyRegisterPage(),
        "/${Routes.home.toString()}": (context) => const TodoList(),
        "/${Routes.user.toString()}": (context) => const UserDetails(),
        "/${Routes.todoDetails.toString()}": (context) => const TodoDetails(),
      },
    );
  }
}
