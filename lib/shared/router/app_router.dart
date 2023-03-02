import 'package:go_router/go_router.dart';
import 'package:rohy/shared/models/route_path.dart';
import 'package:rohy/edt/view/edt_screen.dart';
import 'package:rohy/get_started/view/get_started_screen.dart';
import 'package:rohy/login/view/login_screen.dart';
import 'package:rohy/register_account/view/register_account_screen.dart';
import 'package:rohy/register_via_email/view/register_via_email_screen.dart';

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