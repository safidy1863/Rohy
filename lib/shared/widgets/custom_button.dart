import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rohy/shared/colors/app_colors.dart';

class CustomButton extends StatelessWidget {

  final Widget labelButton;
  final double width;
  final double height;
  final Color? backgroundColor;
  final Function()? onTap;

  const CustomButton({
    super.key,
    required this.labelButton,
    this.height = 40,
    this.width = double.infinity,
    this.backgroundColor,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(width, height),
          backgroundColor: backgroundColor ?? AppColors.greenSecondary
        ),
        child: labelButton
    );
  }
}