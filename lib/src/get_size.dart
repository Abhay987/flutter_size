import 'package:flutter/material.dart';
import 'package:flutter_size/src/layout_builder_size.dart';

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
    return LayoutSize.maxWidth(const BoxConstraints());
  }

  ///FetchMinimumWidth
  double get minWidth {
    return LayoutSize.minWidth(const BoxConstraints());
  }

  ///FetchMaximumWidth
  double get maxHeight {
    return LayoutSize.maxHeight(const BoxConstraints());
  }

  ///FetchMinimumWidth
  double get minHeight {
    return LayoutSize.minHeight(const BoxConstraints());
  }
}
