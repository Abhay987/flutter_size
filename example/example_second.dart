import 'package:flutter/material.dart';
import 'package:flutter_size/flutter_size.dart';

class ExampleSecondScreen extends StatefulWidget {
  const ExampleSecondScreen({Key? key}) : super(key: key);

  @override
  State<ExampleSecondScreen> createState() => _ExampleSecondScreenState();
}

class _ExampleSecondScreenState extends State<ExampleSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.green,
          width: context.maxWidth,
          height: context.maxHeight,
          child: const Text("Hello World")),
    );
  }
}
