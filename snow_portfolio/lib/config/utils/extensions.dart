import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension WidgetExtensions on Widget {

  Widget center() {
    return Center(
      child: this,
    );
  }

  Widget paddingAll(double padding) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: this,
    );
  }

  Widget paddingSymmetric({double? vertical, double? horizontal}) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: vertical ?? 0,
        horizontal: horizontal ?? 0,
      ),
      child: this,
    );
  }

  Widget paddingOnly({
    double? left,
    double? right,
    double? top,
    double? bottom,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: left ?? 0,
        right: right ?? 0,
        top: top ?? 0,
        bottom: bottom ?? 0,
      ),
      child: this,
    );
  }

  Widget marginAll(double margin) {
    return Container(
      margin: EdgeInsets.all(margin),
      child: this,
    );
  }

  Widget marginSymmetric({double? vertical, double? horizontal}) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: vertical ?? 0,
        horizontal: horizontal ?? 0,
      ),
      child: this,
    );
  }

  Widget marginOnly({
    double? left,
    double? right,
    double? top,
    double? bottom,
  }) {
    return Container(
      margin: EdgeInsets.only(
        left: left ?? 0,
        right: right ?? 0,
        top: top ?? 0,
        bottom: bottom ?? 0,
      ),
      child: this,
    );
  }
}

extension EasyContext on BuildContext {
  Size get mediaQuerySize => MediaQuery.of(this).size;
  double get height => mediaQuerySize.height;
  double get width => mediaQuerySize.width;
  ThemeData get theme => Theme.of(this);
}