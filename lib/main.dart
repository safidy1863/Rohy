import 'package:flutter/material.dart';
import 'package:rohy/shared/router/router.dart';

void main() {
  runApp(const Rohy());
}

class Rohy extends StatelessWidget {
  const Rohy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Rohy',
      routerConfig: AppRouter.configurations,
    );
  }
}

