Language: [English](README.md)

This package helps the user to get width, height details of device, widgets.

## Get started


### Add dependency

```yaml
dependencies:
  flutter_size: ^0.0.5
```

## Features

- Cross platform: mobile, desktop, browser
- Simple, powerful, & Easy to use
- **NO** native dependencies
- Time Saving & improve productivity


### Usage

```dart
import 'package:flutter_size/get_size.dart';
class GetSize extends StatefulWidget {
  const GetSize({Key? key}) : super(key: key);

  @override
  State<GetSize> createState() => _GetSizeState();
}

class _GetSizeState extends State<GetSize> {
  @override
  Widget build(BuildContext context) {
    return Center(child : Container(
      width : context.width(0.3),
      height : context.height(0.9),
    ),
    );
  }
}

```

### Another Example

```dart
import 'package:flutter_size/get_size.dart';
class ExampleScreen extends StatefulWidget {
  const ExampleScreen({Key? key}) : super(key: key);

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: LayoutBody(
            layoutBody: Text("Hlo"),
            width: 0.2,
            height: 0.4,
          ),
        ));
  }
}

```

# [View more Examples](https://github.com/Abhay987/flutter_size/tree/master/example)
