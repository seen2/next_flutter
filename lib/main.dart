import 'package:flutter/material.dart';
import 'package:next_flutter/views/my_home_page.dart';

void main() {
  runApp( const MyApp());
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
      home:const MyHomePage(),
      
    );
  }
}
