import 'package:flutter/material.dart';

class WhiteBorderContainer extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Color backgroundColor;
  final TextStyle? textStyle;

  const WhiteBorderContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.text,
    this.backgroundColor = Colors.transparent,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Center(
        child: Text(
          text,
          style: textStyle ??
              TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
