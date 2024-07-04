import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iinfluencer/common/constants/colors.dart';
import 'package:iinfluencer/common/constants/default_button.dart';
import 'package:iinfluencer/common/constants/textformfield.dart';
import 'package:iinfluencer/common/constants/white_container.dart';
import 'package:iinfluencer/common/constants/white_textformfield.dart';
import 'package:iinfluencer/common/white_border_container.dart';
import 'dart:math';

import 'common/constants/bg_widget.dart';
class TestPagee extends StatelessWidget {
  const TestPagee({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
          children: [
            BackgroundImageWidget(),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Hello Flutter!',
                  style: TextStyle(
                    color:Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                  ),
                  Spacer(),
                  DefaultTextFormField(
                      width: 258.w,
                      labelText: 'write you name',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      keyboardType: TextInputType.text,
                      onChanged:(value) {
                        print('Text changed: $value');
                      },

                    icon: Icons.person,
                  ),
                  Spacer(),
                  WhiteTextformfield(
                    width: 258.w,
                    labelText: 'write your name',
                    labelStyle: TextStyle(
                      color: black1,
                    ),
                    keyboardType: TextInputType.text,
                    onChanged:(value) {
                      print('Text changed: $value');
                    },

                    icon: Icons.person,
                  ),
                  Spacer(),
                  WhiteBorderContainer(height: 48.h, width:258.w, text: 'See You Later!'),
                  Spacer(),
                  WhiteContainer(height: 30.h, width: 180.w,
                      text:'marketing Rules'),

                  Spacer(),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: DefaultButton(text: 'Save',onPressed: (){},),
                  ),
                ],
              ),
            ),
          ],
      ),
    );
  }
}
