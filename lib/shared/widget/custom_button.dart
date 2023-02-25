import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final Widget labelButton;
  final double width;
  final double height;
  final Color? backgroundColor;

  const CustomButton({
    super.key,
    required this.labelButton,
    this.height = 50,
    this.width = double.infinity,
    this.backgroundColor
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          // TODO : change Redirection in home page
            onPressed: () => print("Login redirection"),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(width, height),
              backgroundColor: backgroundColor ?? Colors.green
            ),
            child:  labelButton
        )
    );
  }
}