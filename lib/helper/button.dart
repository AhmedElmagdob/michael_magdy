import 'package:flutter/material.dart';
import 'package:michael_magdy/helper/sizes.dart';

import 'colors.dart';
class LBottom extends StatelessWidget {
  Widget title;
  VoidCallback function;
  LBottom({Key? key, required this.function, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        width: width(context),
        height: 45,
        decoration: BoxDecoration(
          color: colors.blue,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
            child: title
        ),
      ),
    );
  }
}