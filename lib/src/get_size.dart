import 'package:flutter/material.dart';

extension DeviceSize on BuildContext {
  ///FetchCustomWidth
  double width(double widthSize) {
    return MediaQuery.of(this).size.width * widthSize;
  }

  ///FetchCustomHeight
  double height(double heightSize) {
    return MediaQuery.of(this).size.height * heightSize;
  }

  ///FetchDeviceWidth
  double get deviceWidth {
    return MediaQuery.of(this).size.width;
  }

  ///FetchDeviceHeight
  double get deviceHeight {
    return MediaQuery.of(this).size.height;
  }

  ///FetchDeviceOrientation
  Orientation get deviceOrientation {
    return MediaQuery.of(this).orientation;
  }

  ///FetchDeviceHeightExpectAppBarHeightAndStatusBarHeight
  double get totalHeight {
    return MediaQuery.of(this).size.height -
        kToolbarHeight -
        MediaQuery.of(this).padding.top;
  }

  /// Return Platform Brightness
  Brightness get platformBrightness {
    return MediaQuery.of(this).platformBrightness;
  }
}
