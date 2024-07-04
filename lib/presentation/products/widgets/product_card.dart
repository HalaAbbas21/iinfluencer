import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/constants/colors.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final String description;
  final String price;
  final Color desColor;

  const ProductCard({
    Key? key,
    required this.productName,
    required this.description,
    required this.price,
    required this.desColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Container(
        height: 95.h,
        width: 310.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.r),
          border: Border.all(color: Colors.white),
          color: babyBlue,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                productName,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Spacer(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 8, top: 8, bottom: 8),
                    child: Container(
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
                  ),
                  SizedBox(width: 30.w),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, top: 8, bottom: 8),
                    child: Text(
                      price,
                      style: TextStyle(
                        color: white,
                        fontSize: 24,
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

