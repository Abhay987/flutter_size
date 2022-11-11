import 'package:flutter/material.dart';
import 'package:flutter_size/flutter_size.dart';

class ExampleSecond extends StatefulWidget {
  const ExampleSecond({Key? key}) : super(key: key);

  @override
  State<ExampleSecond> createState() => _ExampleSecondState();
}

class _ExampleSecondState extends State<ExampleSecond> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const Text('Hello World'),
          40.verticalSpaceBetweenWidgets,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Hello'),
              45.horizontalSpaceBetweenWidgets,
              const Text('World !'),
            ],
          ),
        ],
      ),
    ));
  }
}
