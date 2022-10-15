import 'package:flutter/material.dart';
import 'package:flutter_size/src/layout_builder_size.dart';

extension DeviceSize on BuildContext {
  double getWidth(double widthSize) {
    return MediaQuery.of(this).size.width*widthSize;
  }

  double getHeight(double heightSize) {
    return MediaQuery.of(this).size.height*heightSize;
  }

  double get getDeviceWidth {
    return MediaQuery.of(this).size.width;
  }

  double get getDeviceHeight {
    return MediaQuery.of(this).size.height;
  }

  Orientation get getDeviceOrientation {
    return MediaQuery.of(this).orientation;
  }

  double getWidthExceptPadding(double paddingSize){
    return MediaQuery.of(this).size.width-paddingSize;
  }

  double get getTotalHeight{
    return MediaQuery.of(this).size.height - kToolbarHeight - MediaQuery.of(this).padding.top;
  }

  // getLayoutBuilderMaximumHeight(){
  //   const constraints = BoxConstraints();
  //   constraints.getLayoutMaxHeight;
  // }

   double get getLayoutMaxWidth {
    return const BoxConstraints().getLayoutMaxWidth;
  }

  double get getLayoutMinWidth {
    return const BoxConstraints().getLayoutMinWidth;
  }

  double get getLayoutMaxHeight {
    return const BoxConstraints().getLayoutMaxHeight;
  }

  double get getLayoutMinHeight {
    return const BoxConstraints().getLayoutMinHeight;
  }


}

