import 'package:flutter/material.dart';

class LayoutSize {

  ///FetchMaximumWidth
  static double maxWidth(BoxConstraints constraints) {
    return constraints.maxWidth;
  }

  ///FetchMinimumWidth
  static double minWidth(BoxConstraints constraints) {
    return constraints.minWidth;
  }

  ///FetchMaximumHeight
  static double maxHeight(BoxConstraints constraints) {
    return constraints.maxHeight;
  }

  ///FetchMinimumHeight
  static double minHeight(BoxConstraints constraints) {
    return constraints.minHeight;
  }
}
