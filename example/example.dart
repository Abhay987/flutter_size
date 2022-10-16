import 'package:flutter/material.dart';
import 'package:flutter_size/flutter_size.dart';

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({Key? key}) : super(key: key);

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: context.width(0.4),
          height: context.height(0.3),
          child: const Text("Example"),
        ),
      ),
    );
  }
}
