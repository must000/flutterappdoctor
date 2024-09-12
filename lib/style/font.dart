import 'package:flutter/material.dart';

class F {
  TextStyle sMedium(
    double fSize,
    Color? fColor, {
    FontWeight? fWeight,
  }) =>
      TextStyle(
        fontSize: fSize,
        fontWeight: fWeight ?? FontWeight.normal,
        color: fColor ?? Colors.black,
      );
      
}