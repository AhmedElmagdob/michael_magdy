import 'package:flutter/material.dart';

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}
class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;
  static double? safeAreaHorizontal;
  static double? safeAreaVertical;
  static double? safeBlockHorizontal;
  static double? safeBlockVertical;
  static double? topPadding;
  static String? screenSize;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;
    topPadding = _mediaQueryData!.padding.top;

    safeAreaHorizontal = _mediaQueryData!.padding.left + _mediaQueryData!.padding.right;
    safeAreaVertical = _mediaQueryData!.padding.top + _mediaQueryData!.padding.bottom;

    safeBlockHorizontal = (screenWidth! - safeAreaHorizontal!) / 100;
    safeBlockVertical = (screenHeight! - safeAreaVertical!) / 100;

    defaultSize = orientation == Orientation.landscape
        ? screenHeight! * .024
        : screenWidth! * .024;

    print('this is the default size $defaultSize');
  }

}
double getProportionateScreenHeight(double inputHeight) {
  double? screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight!;
}
double getProportionateScreenWidth(double inputWidth) {
  double? screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth!;
}

