import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

extension CustomNumExtension on num {
  /// Return Horizontal Space Between Widgets
  Widget get horizontalSpaceBetweenWidgets => SizedBox(width: toDouble());

  /// Return Vertical Space Between Widgets
  Widget get verticalSpaceBetweenWidgets => SizedBox(height: toDouble());

  Widget get widthBox => SizedBox(width: toDouble());

  Widget get heightBox => SizedBox(height: toDouble());
}
