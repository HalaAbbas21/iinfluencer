import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iinfluencer/common/constants/bg_widget.dart';

import '../../../common/constants/colors.dart';
import '../../../common/constants/default_button.dart';
import '../../../common/constants/white_textformfield.dart';
import '../../../common/white_border_container.dart';

class CreateBrand extends StatelessWidget {
  const CreateBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          BackgroundImageWidget(),
          Padding(
            padding: const EdgeInsets.only(left:20.0,top: 60),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_back, color: black1,size: 20,),
                    SizedBox(width: 5.w),
                    Text(
                      'Create New Brand',
                      style: TextStyle(
                          fontSize: 24,
                          color: black1,
                          fontWeight: FontWeight.w200
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.h,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center
                      ,
                      children: [
                        CircleAvatar(
                          radius: 100,
                          backgroundColor: white,
                          child: Container(
                            width: 50.w,
                            height: 50.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.r),
                              color: babyBlue
                            ),
                          ),
                        ),

                        SizedBox(height: 20.h,),
                        Row(
                          children: [
                            WhiteBorderContainer(height: 50.h, width: 130.w, text: 'Name'),
                            Spacer(),
                            WhiteTextformfield(
                              width: 210,
                              labelText: 'enter brand name',
                              keyboardType: TextInputType.name,
                              labelStyle:TextStyle(
                                color: lightBlack,
                                fontSize: 12,
                              ),
                              onChanged:(value) {
                                //print('Text changed: $value');
                              },
                            )
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            WhiteBorderContainer(height: 50.h, width: 130.w, text: 'Description'),
                            Spacer(),
                            WhiteTextformfield(
                              width: 210,
                              labelText: 'enter brand description',
                              labelStyle:TextStyle(
                                  color: lightBlack,
                                  fontSize: 12
                              ),
                              keyboardType: TextInputType.name,
                              onChanged:(value) {
                                //print('Text changed: $value');
                              },
                            )
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            WhiteBorderContainer(height: 50.h, width: 130.w, text: 'Industry'),
                            Spacer(),
                            WhiteTextformfield(
                              width: 210,
                              labelText: 'enter brand industry',
                              labelStyle:TextStyle(
                                  color: lightBlack,
                                  fontSize: 12
                              ),
                              keyboardType: TextInputType.number,
                              onChanged:(value) {
                                //print('Text changed: $value');
                              },
                            )
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            WhiteBorderContainer(height: 50.h, width: 130.w, text: 'Target Audience'),
                            Spacer(),
                            WhiteTextformfield(
                              width: 210,
                              labelText: 'enter brand target audience',
                              labelStyle:TextStyle(
                                  color: lightBlack,
                                  fontSize: 12
                              ),
                              keyboardType: TextInputType.number,
                              onChanged:(value) {
                                //print('Text changed: $value');
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0,right: 20),
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
