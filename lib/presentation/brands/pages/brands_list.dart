import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iinfluencer/common/constants/bg_widget.dart';
import 'package:iinfluencer/presentation/brands/pages/create_brand.dart';
import 'package:iinfluencer/presentation/brands/widgets/brand_card.dart';

import '../../../common/constants/colors.dart';
import '../../../common/constants/custom_search.dart';
import '../../../common/constants/white_container.dart';

class BrandsList extends StatelessWidget {
  const BrandsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImageWidget(),
      Padding(

        padding: const EdgeInsets.only(left:20.0,top: 60),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back, color: black1,size: 20,),
                  SizedBox(width: 5.w),
                  Text(
                    'Brands',
                    style: TextStyle(
                        fontSize: 24,
                        color: black1,
                        fontWeight: FontWeight.w200
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: const EdgeInsets.only(right: 25.0),
                child: Search(hintText:'Search for Brands'),
              ),
              SizedBox(height: 5.h),
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start
                  ,
                  children: [
                    MaterialButton(
                      onPressed: (){
                        Get.to(CreateBrand());
                      },
                        child: WhiteContainer(height: 40.h, width: 215.w, text: 'Create New Product',fontSize: 18)),

                    WhiteContainer(height: 40.h, width: 89.w, text: 'Edit',fontSize: 18),
                  ],
                ),
              ),
              SizedBox(height: 35.h,),
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: BrandCard(
                    brandName: 'brandName1',
                    description: 'description1',
                    industry: 'industry1',
                    desColor: pink2,
                    targetAudience: '10-20 boys'),
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: BrandCard(
                    brandName: 'brandName2',
                    description: 'description2',
                    industry: 'industry2',
                    desColor: pink2,
                    targetAudience: '50-60'),
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: BrandCard(
                    brandName: 'brandName2',
                    description: 'description2',
                    industry: 'industry2',
                    desColor: pink2,
                    targetAudience: '50-60'),
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: BrandCard(
                    brandName: 'brandName2',
                    description: 'description2',
                    industry: 'industry2',
                    desColor: pink2,
                    targetAudience: '50-60'),
              ),
            ],
          ),
        ),
      ),
      ]
    ),
    );
  }
}
