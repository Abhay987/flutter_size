<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Language: [English](README.md)

You can get size From BuildContext size and also size form Layout Builder Box Constraints size

## Get started


### Add dependency

```yaml
dependencies:
  flutter_size: ^0.0.1
```

### Super simple to use

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
      width : context.getWidth(0.3),
      height : context.getHeight(0.9),
    ),
    );
  }
}

```



## Examples

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
      width : context.getDeviceWidth,
      height : context.getDeviceHeight,
    ),
    );
  }
}

```

