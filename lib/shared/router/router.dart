import 'package:go_router/go_router.dart';
import 'package:rohy/shared/models/route_path.dart';
import 'package:rohy/view/login_screen.dart';
import 'package:rohy/view/register_account.dart';
import 'package:rohy/view/register_via_email.dart';

class AppRouter {

  static GoRouter configurations = GoRouter(
    initialLocation: RoutePath.registerViaEmailPath,
    routes: [
      GoRoute(
        path: RoutePath.loginPath,
        builder: (context,state) => const LoginScreen(),
      ),
      GoRoute(
        path: RoutePath.registerViaEmailPath,
        builder: (context,state) => const RegisterViaEmail(),
      ),
      GoRoute(
        path: RoutePath.registerAccount,
        builder: (context,state) => const RegisterAccount()
      )
    ]
  );
}