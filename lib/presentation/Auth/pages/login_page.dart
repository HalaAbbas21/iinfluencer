import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iinfluencer/common/constants/bg_widget.dart';
import 'package:iinfluencer/common/constants/colors.dart';
import 'package:iinfluencer/common/constants/default_button.dart';
import 'package:iinfluencer/common/constants/textformfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children:[
          BackgroundImageWidget(),
          Padding(
            padding: const EdgeInsets.only(left: 35.0,top: 50),
            child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'LOGIN',
                style: TextStyle(
                  color:black1,
                  fontWeight: FontWeight.w400,
                  fontSize: 85,
                ),
              ),
              //SizedBox(height: 1.sp,),
              Text(
                'Welcome Back!',
                style: TextStyle(
                  color: black1,
                  fontWeight: FontWeight.w200,
                  fontSize: 18,
                  letterSpacing: 1
                ),
              ),
              SizedBox(height: 80.sp,),
              DefaultTextFormField(
                width: 300.w,
                labelText: 'username',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                keyboardType: TextInputType.text,
                onChanged:(value) {
                  //print('Text changed: $value');
                },

                icon: Icons.person,
              ),
              SizedBox(height: 5.sp,),
              DefaultTextFormField(
                width: 300.w,
                labelText: 'password',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                keyboardType: TextInputType.text,
                onChanged:(value) {
                  //print('Text changed: $value');
                },

                icon: Icons.lock,
              ),
              SizedBox(height: 10.sp,),
              DefaultButton(text: 'Login', onPressed: (){}),
            ],
                    ),
          ),
      ],
      ),
    );
  }
}
