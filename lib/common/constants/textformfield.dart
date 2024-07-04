import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iinfluencer/common/constants/colors.dart';

class DefaultTextFormField extends StatelessWidget {
  final double width;
  final IconData? icon;
  final String labelText;
  final TextStyle? labelStyle;
  final TextInputType keyboardType;
  final ValueChanged<String> onChanged;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? initialValue;
  final TextStyle? style;
  final TextAlign textAlign;
  final bool autofocus;
  final bool obscureText;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onFieldSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final Color cursorColor;
  final double cursorWidth;
  final Radius cursorRadius;
  final Brightness keyboardAppearance;
  final EdgeInsets scrollPadding;

  const DefaultTextFormField({
    Key? key,
    required this.width,
    this.icon,
    required this.labelText,
    this.labelStyle,
    required this.keyboardType,
    required this.onChanged,
    this.controller,
    this.focusNode,
    this.initialValue,
    this.style,
    this.textAlign = TextAlign.start,
    this.autofocus = false,
    this.obscureText = false,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.inputFormatters,
    this.cursorColor = Colors.white,
    this.cursorWidth = 2.0,
    this.cursorRadius = const Radius.circular(2.0),
    this.keyboardAppearance = Brightness.light,
    this.scrollPadding = const EdgeInsets.all(20.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(color: white),
        borderRadius: BorderRadius.circular(40.r),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Icon(icon, color: Colors.white),
            ),
          ),
          Expanded(
            child: TextFormField(
              controller: controller,
              focusNode: focusNode,
              initialValue: initialValue,
              decoration: InputDecoration(
                labelText: labelText,
                labelStyle: labelStyle,
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 14),
              ),
              keyboardType: keyboardType,
              onChanged: onChanged,
              style: style,
              textAlign: textAlign,
              autofocus: autofocus,
              obscureText: obscureText,

              onEditingComplete: onEditingComplete,
              onFieldSubmitted: onFieldSubmitted,
              inputFormatters: inputFormatters,
              cursorColor: cursorColor,
              cursorWidth: cursorWidth,
              cursorRadius: cursorRadius,
              keyboardAppearance: keyboardAppearance,
              scrollPadding: scrollPadding,
            ),
          ),
        ],
      ),
    );
  }
}
