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

## Usage 

### context.width(double size)

this method gives width to the widget, equivalent to (device_width * size).

### context.height(double heightSize)

this method gives height to the widget, equivalent to (device_height * size).

```dart

class CustomWidthAndHeight extends StatelessWidget {
  const CustomWidthAndHeight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        color: Colors.blueGrey,
        width: context.width(0.4),
        height: context.height(0.3),
        child: const Text("Hello World !"),
      ),
    ));
  }
}

```

### context.deviceHeight

this method gives height of the device.

### context.deviceWidth

this method gives width of the device.

```dart

class DeviceWidthAndHeight extends StatelessWidget {
  const DeviceWidthAndHeight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        color: Colors.red,
        width: context.deviceWidth,
        height: context.deviceHeight,
        child: const Text("Hello World !"),
      ),
    ));
  }
}

```

### context.deviceOrientation 

this method gives the current orientation of the device.

### context.totalHeight

returns device height excluding appBar height and status bar height.

### context.platformBrightness

this method gives platform brightness of the device.


```dart

class DeviceOrientationAndDeviceHeightAndPlatformBrightness extends StatelessWidget {
  const DeviceOrientationAndDeviceHeightAndPlatformBrightness({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Device Orientation is : ${context.deviceOrientation}"),
            const SizedBox(height: 40,),
            Text("Device Height excluding appBar height and status bar height is : ${context.totalHeight}"),
            const SizedBox(height: 40,),
            Text("Platform Brightness is : ${context.platformBrightness}"),
          ],
        ),
      ),
    ));
  }
}


```


### (double height).verticalSpaceBetweenWidgets

returns SizedBox with height as the provided value.

### (double width).horizontalSpaceBetweenWidgets

returns SizedBox with width as the provided value.

```dart

class CustomSpaceBetweenWidgets extends StatelessWidget {
  const CustomSpaceBetweenWidgets({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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

```



### layoutBody class

returns a widget with given constraints, default will be device height and device width.

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
