import 'package:flutter/material.dart';
import 'package:flutter_size/src/layout_builder_size.dart';

extension DeviceSize on BuildContext {
  double width(double widthSize) {
    return MediaQuery.of(this).size.width * widthSize;
  }

  double height(double heightSize) {
    return MediaQuery.of(this).size.height * heightSize;
  }

  double get deviceWidth {
    return MediaQuery.of(this).size.width;
  }

  double get deviceHeight {
    return MediaQuery.of(this).size.height;
  }

  Orientation get deviceOrientation {
    return MediaQuery.of(this).orientation;
  }

  double widthExceptPadding(double paddingSize) {
    return MediaQuery.of(this).size.width - paddingSize;
  }

  double get totalHeight {
    return MediaQuery.of(this).size.height -
        kToolbarHeight -
        MediaQuery.of(this).padding.top;
  }

  double get maxWidth {
    return LayoutSize.maxWidth(const BoxConstraints());
  }

  double get minWidth {
    return LayoutSize.minWidth(const BoxConstraints());
  }

  double get maxHeight {
    return LayoutSize.maxHeight(const BoxConstraints());
  }

  double get minHeight {
    return LayoutSize.minHeight(const BoxConstraints());
  }
}
