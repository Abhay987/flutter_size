Language: [English](README.md)

You can add and get custom size,orientation of any type of widgets.
In size, you can add and get width,height of the device and widgets and You also get the full height and width of particular devices.
This packages is developed for all platforms.
This purpose of creating this package is to save time and increase productivity.

## Get started


### Add dependency

```yaml
dependencies:
  flutter_size: ^0.0.4
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

