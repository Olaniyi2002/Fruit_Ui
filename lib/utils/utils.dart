import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Utils {
  late double _height, _width;
  late double _scale_Height, _scale_Width;

  void size(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.height;
    _scale_Height = _height / 100;
    _scale_Width = _width / 100;
  }

  double get scale_Width => _scale_Width;

  double get scale_Height => _scale_Height;
}
