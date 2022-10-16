import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

///Return Layout Builder Widget

class LayoutBody extends StatefulWidget {
  final Widget layoutBody;
  final num? width;
  final num? height;
  const LayoutBody(
      {Key? key, required this.layoutBody, this.height, this.width})
      : super(key: key);

  @override
  State<LayoutBody> createState() => _LayoutBodyState();
}

class _LayoutBodyState extends State<LayoutBody> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {

       //Checking Condition on width and height of the widget
      if (widget.width == null && widget.height == null) {
        return SizedBox(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: widget.layoutBody,
        );
      } else if (widget.width == null && widget.height != null) {
        return SizedBox(
          height: constraints.maxHeight * widget.height!,
          child: widget.layoutBody,
        );
      } else if (widget.width != null && widget.height == null) {
        return SizedBox(
          width: constraints.maxWidth * widget.width!,
          child: widget.layoutBody,
        );
      } else {
        return SizedBox(
          width: constraints.maxWidth * widget.width!,
          height: constraints.maxHeight * widget.height!,
          child: widget.layoutBody,
        );
      }
    });
  }
}
