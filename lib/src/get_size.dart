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

  ///FetchCustomWidthWithoutPaddingSize
  double widthExceptPadding(double paddingSize) {
    return MediaQuery.of(this).size.width - paddingSize;
  }

  ///FetchDeviceHeightExpectAppBarHeightAndStatusBarHeight
  double get totalHeight {
    return MediaQuery.of(this).size.height -
        kToolbarHeight -
        MediaQuery.of(this).padding.top;
  }

  ///FetchMaximumWidth
  double get maxWidth {
    double getMaxWidth = 0;

    // LayoutBuilder(builder: (deviceSize, constraints) {
    //   getMaxWidth = constraints.maxWidth;
    //   return const SizedBox();
    // });

    getMaxWidth = const BoxConstraints().constrainHeight();

    return getMaxWidth;
  }

  ///FetchMinimumWidth
  double get minWidth {
    double getMinWidth = 0;
    LayoutBuilder(builder: (deviceSize, constraints) {
      getMinWidth = constraints.minWidth;
      return const SizedBox();
    });
    return getMinWidth;
  }

  ///FetchMaximumHeight
  double get maxHeight {
    double getMaxHeight = 0;
    LayoutBuilder(builder: (deviceSize, constraints) {
      getMaxHeight = constraints.constrainHeight();
      return const SizedBox();
    });
    return getMaxHeight;
  }

  ///FetchMinimumHeight
  double get minHeight {
    double getMinHeight = 0;
    LayoutBuilder(builder: (deviceSize, constraints) {
      getMinHeight = constraints.minHeight;
      return const SizedBox();
    });
    return getMinHeight;
  }
}
