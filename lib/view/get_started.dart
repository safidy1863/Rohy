import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:rohy/shared/colors/app_colors.dart';
import 'package:rohy/shared/widget/custom_button.dart';

class GetStarted extends StatelessWidget {

  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.whiteGrey,
        child: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 22.h,
                child: Transform.rotate(
                  angle: 75,
                  child: Container(
                    width: 118.w,
                    height: 118.w,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              AppColors.bluePrimary,
                              AppColors.greenSecondary
                            ]
                        ),
                      borderRadius: BorderRadius.circular(100.r)
                    ),
                  )
                ),
              ),
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 300.w,
                  height: 90.h,
                ),
              ),
              Positioned(
                bottom: 140.h,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 44.w),
                  child: Column(
                    children: [
                      Text(
                        'Bienvenu sur l\'application ROHY',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColors.bluePrimary,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      CustomButton(
                        labelButton: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'COMMENCER'
                            ),
                            Icon(
                              Icons.arrow_forward_outlined,
                              size: 14.sp,
                            )
                          ],
                        ),
                        onTap: () => {},
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}