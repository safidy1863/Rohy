import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rohy/shared/router/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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

