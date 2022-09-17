import 'package:flutter/material.dart';

class MyAppFeatureCard extends StatelessWidget {
  const MyAppFeatureCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Card(
          child: Column(
        children: const [
          SizedBox(height: 30,),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "In This App \nYou can Create your own account.\nYou can Create and Manage your personal Tasks.\nYou can Delete and Uodate your personal Tasks.\nNote: All your data will stored in the cloud.\nYou can access it from anywhere anytime.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700
              ),
            ),
          ),
        ],
      )),
    );
  }
}
