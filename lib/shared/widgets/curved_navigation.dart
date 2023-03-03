import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:rohy/shared/colors/app_colors.dart';

class CurvedNavigation extends StatelessWidget {
  const CurvedNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.white,
      color: AppColors.bluePrimary,
      height: 60,
      items: const [
        Icon(
          Icons.file_copy,
          color: Colors.white,
        ),
        Icon(
          Icons.schedule_send,
          color: Colors.white,
        ),
        Icon(
          Icons.message,
          color: Colors.white,
        ),
      ],
    );
  }
}
