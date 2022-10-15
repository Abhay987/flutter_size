import 'package:flutter/material.dart';

extension LayoutSize on BoxConstraints {
  double get getLayoutMaxWidth {
    return maxWidth;
  }

  double get getLayoutMinWidth {
    return minWidth;
  }

  double get getLayoutMaxHeight {
    return maxHeight;
  }

  double get getLayoutMinHeight {
    return minHeight;
  }

}