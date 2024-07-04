import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/constants/colors.dart';

class BrandCard extends StatelessWidget {
  final String brandName;
  final String description;
  final String industry;
  final String targetAudience;
  final Color desColor;

  const BrandCard({
    Key? key,
    required this.brandName,
    required this.description,
    required this.industry,
    required this.desColor,
    required this.targetAudience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 170.h,
        width: 300.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.r),
          border: Border.all(color: Colors.white),
          color: babyBlue
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: white,
                    ),
                    SizedBox(height: 10.h,),
                    Text(
                      brandName,
                      style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            SizedBox(width: 20.w,),
              Column(

                children: [
                  Container(
                    height: 45,
                    width: 195,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.r),
                      color: desColor,
                    ),
                    child: Center(
                      child: Text(
                        description,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h,),
                  Container(
                    height: 45,
                    width: 195,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.r),
                      color: desColor,
                    ),
                    child: Center(
                      child: Text(
                        industry,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h,),
                  Container(
                    height: 45,
                    width: 195,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.r),
                      color: desColor,
                    ),
                    child: Center(
                      child: Text(
                        targetAudience,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

