import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class WhiteContainer extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final TextStyle? textStyle;
  final double? fontSize;

  const WhiteContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.text,
    this.textStyle,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(40.r),
      ),
      child: Center(
        child: Text(
          text,
          style: textStyle ??
              TextStyle(color: black1, fontSize: fontSize),
        ),
      ),
    );
  }
}
