import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rohy/shared/colors/app_colors.dart';
import 'package:rohy/shared/widget/custom_button.dart';
import 'package:rohy/shared/widget/custom_textfield.dart';

class LoginScreen extends StatelessWidget {

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.bluePrimary,
              AppColors.greenSecondary
            ]
          ),
        ),
        child: SafeArea(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'VOUS N\'AVEZ PAS UN COMPTE?',
                        style: TextStyle(
                            color: AppColors.greenThirdly,
                            fontSize: 12.sp
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Text(
                        'S\'INSCRIRE',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                    left: -60.w,
                    top: 48.h,
                    child: Transform.rotate(
                      angle: -6.41,
                      child: Image.asset(
                        'assets/images/calendrier2.png',
                        height: 206.h,
                        width: 336.w,
                      ),
                    )
                ),
                Container(
                  margin: EdgeInsets.only(top: 250.h),
                  padding: EdgeInsets.symmetric(horizontal: 34.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                          'SE CONNECTER',
                        style: TextStyle(
                          fontSize: 40.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w700
                        )
                      ),
                      const SizedBox(height: 5,),
                      const Text(
                        'Veuillez insérer votre email et mot de passe',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                      SizedBox(height: 35.h,),
                      _buildForm(),
                    ],
                  ),
                )
              ],
            )
        ),
      ),
    );
  }
  
  Widget _buildForm() {
    return Form(
      child: Column(
        children: [
          const CustomTextField(
            hintText: 'Votre e-mail',
          ),
          SizedBox(height: 35.h,),
          const CustomTextField(
            hintText: 'Votre mot de passe',
          ),
          SizedBox(height: 35.h,),
          const CustomButton(
            labelButton: Text('CONNECTER'),
          )
        ],
      ),
    );
  }
}