import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/presentation/routes/route_const.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
      context.go(RouteConst.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children:[
        Text("Tecnology Jorge Martelo"),
        
      ]),
    );
  }
}
