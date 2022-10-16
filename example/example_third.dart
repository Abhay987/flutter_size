import 'package:flutter/material.dart';
import 'package:flutter_size/flutter_size.dart';


class ExampleThirdScreen extends StatefulWidget {
  const ExampleThirdScreen({Key? key}) : super(key: key);

  @override
  State<ExampleThirdScreen> createState() => _ExampleThirdScreenState();
}

class _ExampleThirdScreenState extends State<ExampleThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: LayoutBody(layoutBody: Text("Hlo"),width: 0.2,height: 0.4,),));
  }
}
