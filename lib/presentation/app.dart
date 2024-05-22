import 'package:flutter/material.dart';
import 'package:myapp/presentation/routes/route.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: AppRoute.router.routeInformationProvider,
      routeInformationParser: AppRoute.router.routeInformationParser,
      routerDelegate: AppRoute.router.routerDelegate,
    );
  }
}
