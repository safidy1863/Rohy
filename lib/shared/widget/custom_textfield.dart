import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget{

  final String hintText;
  final IconData prefixIcon;
  final TextInputType? textInputType;
  final bool obscureText;
  final Function()? onTapShowPassword;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.textInputType,
    this.obscureText = false,
    this.onTapShowPassword
});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          prefixIcon,
          size: 20,
        ),
        Expanded(
          child: TextField(
            keyboardType: textInputType,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hintText,
              filled: true,
              fillColor: Colors.transparent,
              suffixIcon: textInputType == TextInputType.visiblePassword
                ? _buildSuffixIconPassword(obscureText,onTapShowPassword)
                : null,

            )
          ),
        )
      ],
    );
  }

  Widget _buildSuffixIconPassword(bool obscureText,Function()? onTapShowPassword) {
      return IconButton(
          onPressed: onTapShowPassword,
          icon: Icon(
            obscureText
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined
          )
      );
  }
}