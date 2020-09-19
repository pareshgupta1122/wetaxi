import 'package:flutter/widgets.dart';

class SizeConfig {

  MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeWidth;
  static double blockSizeHeight;

  void init(BuildContext context) {

    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeWidth = screenWidth / 100;
    blockSizeHeight = screenHeight / 100;

  }
}