import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rohy/shared/router/router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Rohy());
}

class Rohy extends StatelessWidget {
  const Rohy({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Rohy',
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.configurations,
        );
      },
      designSize: const Size(428,926),
    );
  }
}

