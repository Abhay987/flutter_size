Language: [English](README.md)

This package helps the user to get width, height details of device, widgets.

## Get started


### Add dependency

```yaml
dependencies:
  flutter_size: ^1.0.1
```

## Features

- Cross platform: mobile, desktop, browser
- Simple, powerful, & Easy to use
- **NO** native dependencies
- Time Saving & improve productivity

## Usage 

## Methods

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

### context.returnBack

this method return previous page if the previous is available in stack and current page will removed from stack.


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
            ElevatedButton(
              onPressed:(){
                context.returnBack;
              },
              child: const Text("Go Back")
            ),
          ],
        ),
      ),
    ));
  }
}


```


### (double height).verticalSpaceBetweenWidgets

returns SizedBox with height as the provided value.

### (double height).heightBox

you can also used this function for return SizedBox with height as the provided value.

### (double width).horizontalSpaceBetweenWidgets

returns SizedBox with width as the provided value.

### (double width).widthBox

you can also used this function for return SizedBox with width as the provided value.

### (String value).fstLtCapitalize

return String with first letter Capitalization

```dart

class CustomSpaceBetweenWidgets extends StatelessWidget {
  const CustomSpaceBetweenWidgets({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          const Text('hello World'.fstLtCapitalize), /// return String with first letter Capitalization
          /// You can choose function acc. to you choice..
          40.heightBox,
          40.verticalSpaceBetweenWidgets,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Hello'),
          /// You can choose function acc. to you choice..
              40.widthBox,
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

## Dynamic Extension Understanding


### (dynamic dynamicValue).getNonNullableStringData

returns empty String if value is null otherwise dynamic value converted to string

### (dynamic dynamicValue).logPrint

this method is showing log with dynamic value.

### (dynamic dynamicValue).fieldValidator

this function is used for validation in TextField,TextFormField widget.
it checks if value is null, is Empty then return error otherwise it return null
"Name" this value can be dynamic acc. to your choice.
if field doest not validate then its showing error like -> 'Name field can\'t be empty'

### (dynamic dynamicValue).fieldValidator

this function also used for validation in TextField,TextFormField widget.
it checks value is null, is Empty and also check the value must be num type in InputField otherwise it return error.
"Phone Number" this value can be dynamic acc. to your choice.
if field doest not validate then its showing error like ->
'Phone Number field can\'t be empty','Phone Number field should be valid number'


```dart


class UnderstandingDynamicExtension extends StatelessWidget {
  const UnderstandingDynamicExtension({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        // if value is null then its return '' other value will be converted into string
        Text(null.getNonNullableStringData),
        ElevatedButton(
          onPressed: () {
            /// this function return log dynamic value for used different purposed.
            /// these data will not be shown in release mode
            "api value is print in log form".logPrint;
            1.logPrint;
            true.logPrint;
          },
          child: const Text('Submit'),
        ),
        TextFormField(
          //it checks value is null , is Empty then return error otherwise it return null
          //"Name" this value can be dynamic acc. to your choice.
          // if field doest not validate then its showing error like -> 'Name field can\'t be empty'
          validator: "Name".fieldValidator,
        ),
        TextFormField(
          //it checks value is null , is Empty and also check the value must be num type in InputField otherwise it return error.
          //"Phone Number" this value can be dynamic acc. to your choice.
          // if field doest not validate then its showing error like ->
          //'Phone Number field can\'t be empty','Phone Number field should be valid number'
          validator: "Phone Number".numberfieldValidator,
        ),
      ]),
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
