import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iinfluencer/common/constants/colors.dart';
import 'package:iinfluencer/common/constants/custom_search.dart';
import 'package:iinfluencer/common/constants/white_container.dart';
import 'package:iinfluencer/presentation/products/pages/create_product.dart';
import 'package:iinfluencer/presentation/products/pages/list.dart';
import 'package:iinfluencer/presentation/products/widgets/product_card.dart';

import '../../../common/constants/bg_widget.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          BackgroundImageWidget(),
          Padding(
            padding: const EdgeInsets.only(left:25.0,top: 60),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back, color: black1,size: 20,),
                      SizedBox(width: 5.w),
                      Text(
                        'Products',
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
                  child: Search(hintText:'Search for Products'),
                ),
                  SizedBox(height: 5.h),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: ElevatedButton(
                            onPressed: (){
                              Get.to(CreateProduct());
                            },
                            child: WhiteContainer(height: 40.h, width: 219.w, text: 'Create New Product',fontSize: 18)),
                      ),
                      SizedBox(width: 3.w,),
                      WhiteContainer(height: 40.h, width: 89.w, text: 'Edit',fontSize: 18),
                    ],
                  ),
                  SizedBox(height: 35.h,),
                  ProductCard(productName: 'productName1', description: 'description1', price: '200', desColor: pink2),
                  SizedBox(height: 5.h,),
                  ProductCard(productName: 'productName1', description: 'description1', price: '200', desColor: green),
                  SizedBox(height: 5.h,),
                  ProductCard(productName: 'productName1', description: 'description1', price: '200', desColor: pink2),
                  SizedBox(height: 5.h,),
                  ProductCard(productName: 'productName1', description: 'description1', price: '200', desColor: green),
                  SizedBox(height: 5.h,),
                  ProductCard(productName: 'productName1', description: 'description1', price: '200', desColor: pink2),
                ],
              ),
            ),
          ),

        ],
      ),

    );
  }
}
