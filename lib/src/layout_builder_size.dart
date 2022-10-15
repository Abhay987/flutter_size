import 'package:flutter/material.dart';

class LayoutSize {
   static double getLayoutMaxWidth(BoxConstraints constraints) {
     return constraints.maxWidth;
   }
   static double getLayoutMinWidth(BoxConstraints constraints) {
     return constraints.minWidth;
   }
   static double getLayoutMaxHeight(BoxConstraints constraints) {
     return constraints.maxHeight;
   }
   static double getLayoutMinHeight(BoxConstraints constraints) {
     return constraints.minHeight;
   }
}
