
import 'package:flutter/material.dart';
import 'package:michael_magdy/helper/sizes.dart';


class HorizintalSpace extends StatelessWidget {
  const HorizintalSpace(this.value);
  final double value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value,
    );
  }
}
class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.value);
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: value,
    );
  }
}

