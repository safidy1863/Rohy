import 'package:flutter/material.dart';
import 'package:rohy/shared/widget/curved_navigation.dart';

class EdtScreen extends StatelessWidget {
  const EdtScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      drawer: Container(
        color: Colors.white,
      ),
      bottomNavigationBar: const CurvedNavigation(),
    );
  }
}
