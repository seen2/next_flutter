import 'package:flutter/material.dart';

class MyTextInput extends StatefulWidget {
  final bool obsecureText;
  final String labelText;
  final Function onChange;

  const MyTextInput(
      {Key? key,
      required this.onChange,
      this.obsecureText = false,
      this.labelText = ""})
      : super(key: key);

  @override
  State<MyTextInput> createState() => _MyTextInputState();
}

class _MyTextInputState extends State<MyTextInput> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),

      child: TextField(
        controller: _controller,
        onChanged: (String value){
          widget.onChange(value);
        },
        obscureText: widget.obsecureText,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: widget.labelText,
        ),
      ),
    );
  }
}
