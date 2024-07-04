import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/constants/bg_widget.dart';
import '../../../common/constants/colors.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

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
                        'Orders',
                        style: TextStyle(
                            fontSize: 24,
                            color: black1,
                            fontWeight: FontWeight.w200
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                ],
              ),
            ),
          ]
      ),
    );
  }
}
