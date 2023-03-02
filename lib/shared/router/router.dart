import 'package:go_router/go_router.dart';
import 'package:rohy/shared/models/route_path.dart';
import 'package:rohy/view/edt_screen.dart';
import 'package:rohy/view/get_started_screen.dart';
import 'package:rohy/view/login_screen.dart';
import 'package:rohy/view/register_account_screen.dart';
import 'package:rohy/view/register_via_email_screen.dart';

class AppRouter {

  static GoRouter configurations = GoRouter(
    initialLocation: RoutePath.edtScreenPath,
    routes: [
      GoRoute(
        path: RoutePath.getStartedScreenPath,
        builder: (context,state) => const GetStartedScreen(),
      ),
      GoRoute(
        path: RoutePath.loginScreenPath,
        builder: (context,state) => const LoginScreen(),
      ),
      GoRoute(
        path: RoutePath.registerViaEmailScreenPath,
        builder: (context,state) => const RegisterViaEmailScreen(),
      ),
      GoRoute(
        path: RoutePath.registerAccountScreenPath,
        builder: (context,state) => const RegisterAccountScreen()
      ),
      GoRoute(
        path: RoutePath.edtScreenPath,
        builder: (context,state) => const EdtScreen()
      )
    ]
  );
}