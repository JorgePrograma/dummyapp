import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class BuildAnimation extends StatelessWidget {
  final double scrollasingnado;
  const BuildAnimation({super.key, required this.scrollasingnado});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: scrollasingnado,
      width: scrollasingnado,
      child: const RiveAnimation.asset(
        "assets/animations/login.riv",
        fit: BoxFit.fill,
        antialiasing: true,
      ),
    );
  }
}
