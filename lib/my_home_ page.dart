// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:next_flutter/controller/tap_controller.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  //Dependency Injection
  final TapController controller = Get.put(TapController());

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
              children: [
                GetBuilder<TapController>(builder: (tapController){
                  return  MyContainerView(value: controller.x);
                }),
                MyContainer(onTap: () => controller.increaseX()),
                // MyContainer(),
                // MyContainer(),
                // MyContainer(),
              ],
            )),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final Function onTap;

  const MyContainer({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => onTap()),
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

class MyContainerView extends StatelessWidget {
  final int value;

  const MyContainerView({Key? key, required this.value}) : super(key: key);

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
        child: Center(
            child: Text(
          value.toString(),
          style: const TextStyle(color: Colors.white, fontSize: 20),
        )),
      ),
    );
  }
}
