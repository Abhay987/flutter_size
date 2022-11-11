import 'package:flutter/material.dart';
import 'package:flutter_size/flutter_size.dart';

class ExampleFourth extends StatefulWidget {
  const ExampleFourth({Key? key}) : super(key: key);

  @override
  State<ExampleFourth> createState() => _ExampleFourthState();
}

class _ExampleFourthState extends State<ExampleFourth> {
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
