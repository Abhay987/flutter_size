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
      body: Center(
        child: SizedBox(width: context.maxWidth*0.2,
            height: context.maxHeight*0.4,
            child: const Text("Example Second"))
      ),
    );
  }
}
