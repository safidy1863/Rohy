import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rohy/shared/colors/app_colors.dart';

class RegisterAccount extends StatelessWidget {

  const RegisterAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10.0.h),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.bluePrimary,
              AppColors.greenPrimary
            ]
          )
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Row(
                children: [

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}