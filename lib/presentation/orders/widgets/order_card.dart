import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iinfluencer/common/constants/bg_widget.dart';
import 'package:iinfluencer/common/constants/colors.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 255.h,
      width: 355.w,
      decoration: BoxDecoration(
        color: babyBlue,
        borderRadius: BorderRadius.circular(40.r),
        border: Border.all(color: white),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: white,
              ),
              SizedBox(width: 2.w,),
              Text(
                'Influencer username',
                style: TextStyle(
                  color: white,
                  fontSize: 18,
                ),
              ),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: white,size: 18,)),
            ],
          ),
          SizedBox(height: 3.h,),
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: white,
              ),
              SizedBox(width: 2.w,),
              Text(
                'Employee username',
                style: TextStyle(
                  color: white,
                  fontSize: 18,
                ),
              ),

            ],
          ),
          Row(
            children: [
              Container(
                height:40.h ,
                width: 134.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: pink2,
                ),
                child: Text(
                  'Title',
                  style: TextStyle(
                    color: white,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(width: 5.w,),
              Container(
                height:40.h ,
                width: 134.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: green,
                ),
                child: Text(
                  'Requested Budget',
                  style: TextStyle(
                    color: white,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                height: 45,
                width: 195,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.r),
                 // color: Colors.green,
                ),
                child: Center(
                  child: Text(
                    'Description',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Container(
                height: 45,
                width: 195,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.r),
                 // color: 'desColor',
                ),
                child: Center(
                  child: Text(
                    'targetAudience',
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
    );
  }
}
