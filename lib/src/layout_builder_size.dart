import 'package:flutter/material.dart';

class LayoutSize {
   static double maxWidth(BoxConstraints constraints) {
     return constraints.maxWidth;
   }
   static double minWidth(BoxConstraints constraints) {
     return constraints.minWidth;
   }
   static double maxHeight(BoxConstraints constraints) {
     return constraints.maxHeight;
   }
   static double minHeight(BoxConstraints constraints) {
     return constraints.minHeight;
   }
}
