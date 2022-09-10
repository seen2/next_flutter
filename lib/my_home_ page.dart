// ignore: file_names
import 'package:flutter/material.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (BuildContext context) => "My App",
      home: Scaffold(
        body: SizedBox(
            height: double.maxFinite,
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                MyContainer(),
                MyContainer(),
                MyContainer(),
                MyContainer(),
              ],
            )),
      ),
    );
  }
}


class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 100,
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.teal,
        ),
        child: const Center(
            child: Text(
          "Tap",
          style: TextStyle(color: Colors.white, fontSize: 20),
        )),
      ),
    );
  }
}
