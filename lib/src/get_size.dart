import 'package:flutter/material.dart';

extension CustomContextExtension on BuildContext {
  ///FetchCustomWidth
  double width(double widthSize) {
    return MediaQuery.sizeOf(this).width * widthSize;
  }

  ///FetchCustomHeight
  double height(double heightSize) {
    return MediaQuery.sizeOf(this).height * heightSize;
  }

  ///FetchDeviceWidth
  double get deviceWidth {
    return MediaQuery.sizeOf(this).width;
  }

  ///FetchDeviceHeight
  double get deviceHeight {
    return MediaQuery.sizeOf(this).height;
  }

  ///FetchDeviceOrientation
  Orientation get deviceOrientation {
    return MediaQuery.orientationOf(this);
  }

  ///FetchDeviceHeightExpectAppBarHeightAndStatusBarHeight
  double get totalHeight {
    return MediaQuery.sizeOf(this).height -
        kToolbarHeight -
        MediaQuery.paddingOf(this).top;
  }

  /// Return Platform Brightness
  Brightness get platformBrightness {
    return MediaQuery.platformBrightnessOf(this);
  }

  void get returnBack => Navigator.of(this).maybePop();
}
