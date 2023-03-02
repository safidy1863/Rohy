import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rohy/shared/colors/app_colors.dart';
import 'package:rohy/shared/models/route_path.dart';
import 'package:rohy/shared/widget/custom_button.dart';
import 'package:rohy/shared/widget/custom_textfield.dart';

class RegisterAccountScreen extends StatelessWidget {

  const RegisterAccountScreen({super.key});

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
              AppColors.greenSecondary,
              AppColors.bluePrimary
            ]
          )
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 26.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => context.pop(),
                      style: ElevatedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        minimumSize: Size.zero,
                        padding: const EdgeInsets.all(3),
                        elevation: 1,
                        backgroundColor: Colors.white.withOpacity(0.15)
                      ),
                      child: const Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Text(
                      'S\'INSCRIRE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 35.sp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      children: [
                        Text(
                          'CREER VOTRE ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        Text(
                          'COMPTE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w600
                          ),
                        )
                      ]
                    ),
                    SizedBox(height: 20.h,),
                    _buildForm(context)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    return Form(
      child: Column(
        children:  [
          const CustomTextField(
            hintText: 'Votre nom',
          ),
          SizedBox(height: 20.h,),
          const CustomTextField(
            hintText: 'Niveau',
          ),
          SizedBox(height: 20.h,),
          const CustomTextField(
            hintText: 'Parcours',
          ),
          SizedBox(height: 20.h,),
          const CustomTextField(
            hintText: 'Votre mot de passe',
          ),
          SizedBox(height: 20.h,),
          const CustomTextField(
            hintText: 'Confirmez votre mot de passe',
          ),
          SizedBox(height: 20.h,),
          SizedBox(
            width: double.infinity,
            child: CustomButton(
              labelButton: Text('CREER UN COMPTE'),
              onTap: () => {},
            ),
          ),
          SizedBox(height: 20.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'VOUS AVEZ DEJA UN COMPTE? ',
                style: TextStyle(
                  color: AppColors.greenThirdly,
                  fontSize: 12.sp
                ),
              ),
              TextButton(
                onPressed: () => context.go(RoutePath.loginScreenPath),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap
                ),
                child: Text(
                  'SE CONNECTER',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}