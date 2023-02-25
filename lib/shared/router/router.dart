import 'package:go_router/go_router.dart';
import 'package:rohy/shared/models/route_path.dart';
import 'package:rohy/view/login_screen.dart';

class AppRouter {

  static GoRouter configurations = GoRouter(
    initialLocation: RoutePath.loginPath,
    routes: [
      GoRoute(
        path: RoutePath.loginPath,
        builder: (context,state) => const LoginScreen(),
      )
    ]
  );
}