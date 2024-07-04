import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/constants/colors.dart';
import '../widgets/product_card.dart';

class List extends StatelessWidget {
  const List({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        ProductCard(productName: 'productName1', description: 'description1', price: '200', desColor: Colors.white),
        SizedBox(height: 5.h,),
        ProductCard(productName: 'productName1', description: 'description1', price: '200', desColor: green),
        SizedBox(height: 5.h,),
        ProductCard(productName: 'productName1', description: 'description1', price: '200', desColor: pink1),

      ],
    );
  }
}
