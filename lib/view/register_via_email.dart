import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:rohy/shared/colors/app_colors.dart';
import 'package:rohy/shared/models/route_path.dart';
import 'package:rohy/shared/widget/custom_button.dart';
import 'package:rohy/shared/widget/custom_textfield.dart';

class RegisterViaEmail extends StatelessWidget {

  const RegisterViaEmail({super.key});

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
              AppColors.greenPrimary,
              AppColors.bluePrimary
            ]
          )
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
                      'VOUS AVEZ DEJA UN COMPTE?',
                      style: TextStyle(
                        color: AppColors.greenSecondary,
                        fontSize: 12.sp
                      ),
                    ),
                    const SizedBox(width: 10,),
                    TextButton(
                      // TODO : Replace with redirection in the login screen
                      onPressed: () => {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap
                      ),
                      child: Text(
                        'SE CONNECTER',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 80.h,
                left: -50.w,
                child: Transform.rotate(
                  angle: 6.21,
                  child: Image.asset(
                    'assets/images/chat.png',
                    height: 150.h,
                    width: 230.w,
                  ),
                ),
              ),
              Positioned(
                right: -100.w,
                top: 30.h,
                child: Transform.rotate(
                  angle: 0.2,
                  child: Image.asset(
                    'assets/images/calendrier.png',
                    width: 340.w,
                    height: 250.h,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 250.h),
                padding: EdgeInsets.symmetric(horizontal: 34.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'S\'INSCRIRE',
                      style: TextStyle(
                        fontSize: 40.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    const SizedBox(height: 5,),
                    const Text(
                      'S\'inscrire avec votre adresse email',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 30.h,),
                    Expanded(child: _buildForm(context))
                  ],
                ),
              ),
               Positioned(
                bottom: 5,
                left: 0,
                right: 0,
                child: Text(
                  'COPYRIGHT \u00a9 CODEO DESIGN',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.38),
                    fontSize: 14.0.sp
                  ),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CustomTextField(
            hintText: 'Votre e-mail',
          ),
          SizedBox(height: 30.h,),
          Container(
            width: double.infinity,
            child: CustomButton(
              labelButton: Text('CONTINUER'),
              onTap: () => context.push(RoutePath.registerAccount),
            ),
          ),
          SizedBox(height: 20.h,),
          Divider(color: AppColors.greenSecondary,),
          SizedBox(height: 20.h,),
          const Text(
            'Ou continuer avec',
            style: TextStyle(color: Colors.white),
          ),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  labelButton: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:const [
                      Icon(
                        FontAwesome5.google,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Text(
                          'Google'
                      )
                    ],
                  ),
                  backgroundColor: AppColors.blueThirdly,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: CustomButton(
                  labelButton: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:const [
                      Icon(
                        FontAwesome5.facebook_f,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Text(
                          'Facebook'
                      )
                    ],
                  ),
                  backgroundColor: AppColors.blueThirdly,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                  'En vous inscrivant, vous acceptez',
                style: TextStyle(
                    fontSize: 12.sp,
                  color: Colors.white
                ),
              ),
              TextButton(
                // TODO : // redirection in app's general condition
                onPressed: () => {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child:  Text(
                  ' nos conditions générales',
                  style: TextStyle(
                    color: AppColors.blueThirdly,
                    fontSize: 12.sp
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