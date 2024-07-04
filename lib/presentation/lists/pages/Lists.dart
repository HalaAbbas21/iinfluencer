import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/constants/bg_widget.dart';
import '../../../common/constants/colors.dart';
import '../../../common/constants/white_container.dart';

class Lists extends StatelessWidget {
  const Lists({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            BackgroundImageWidget(),
            Padding(

              padding: const EdgeInsets.only(left:25.0,top: 60),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back, color: black1,size: 20,),
                      SizedBox(width: 5.w),
                      Text(
                        'Lists',
                        style: TextStyle(
                            fontSize: 24,
                            color: black1,
                            fontWeight: FontWeight.w200
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: WhiteContainer(height: 40.h, width: 219.w, text: 'Create New Product',fontSize: 18),
                      ),
                      SizedBox(width: 3.w,),
                      WhiteContainer(height: 40.h, width: 89.w, text: 'Add',fontSize: 18),
                    ],
                  ),
                  SizedBox(height: 35.h,),
                ],
              ),
            ),
          ]
      ),
    );
  }
}
