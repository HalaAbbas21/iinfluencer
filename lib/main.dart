import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iinfluencer/presentation/Auth/pages/login_page.dart';
import 'package:iinfluencer/presentation/brands/pages/brands_list.dart';
import 'package:iinfluencer/presentation/products/pages/create_product.dart';
import 'package:iinfluencer/presentation/products/pages/products_list.dart';

import 'TestPagee.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget
{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context)
  {
    return ScreenUtilInit(
      designSize: Size(360, 780),
      minTextAdapt: true,
      splitScreenMode: true,

       builder: (BuildContext context, Widget? child){
         return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'Urbanist',
            ),
            home:BrandsList(),
          );
       }
    );
  }
}