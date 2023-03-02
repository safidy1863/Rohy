import 'package:flutter/material.dart';
import 'package:rohy/shared/widget/curved_navigation.dart';

class EdtScreen extends StatelessWidget {
  const EdtScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CurvedNavigation(),
    );
  }
}
