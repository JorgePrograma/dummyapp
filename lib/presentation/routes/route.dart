import 'package:go_router/go_router.dart';
import 'package:myapp/presentation/routes/route_const.dart';
import 'package:myapp/presentation/screen/home/home_screen.dart';
import 'package:myapp/presentation/screen/auth/auth_screen.dart';
import 'package:myapp/presentation/screen/register/register_screen.dart';
import 'package:myapp/presentation/screen/splash/splash_screen.dart';

class AppRoute {
  static final router = GoRouter(
    initialLocation: RouteConst.login,
    routes: [
      GoRoute(
        path: RouteConst.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: RouteConst.login,
        builder: (context, state) => const AuthScreen(),
      ),
      GoRoute(
        path: RouteConst.register,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: RouteConst.home,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
