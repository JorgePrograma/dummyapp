import 'package:flutter/material.dart';
import 'package:myapp/presentation/screen/auth/components/buildAnimation.dart';
import 'package:myapp/presentation/screen/auth/components/buildButton.dart';
import 'package:myapp/presentation/screen/auth/login/form_login.dart';
import 'package:myapp/presentation/screen/auth/signup/form_signup.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isLogin = true;
  bool isScrolled = false;

  void handleChangeIsLoading(bool status) {
    setState(() {
      isLogin = status;
    });
  }

  void handleScroll(double offset) {
    setState(() {
      isScrolled = offset > 0;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color colorForm = isLogin ? Colors.teal : Colors.green;
    double scrollAsignado = isScrolled ? 100 : 200;
    return Scaffold(
      backgroundColor: colorForm,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification) {
                handleScroll(scrollNotification.metrics.pixels);
                return true;
              },
              child: Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                            color: Colors.white,
                          ),
                          child: Flex(
                            direction:
                                isScrolled ? Axis.horizontal : Axis.vertical,
                            children: [
                              BuildAnimation(scrollasingnado: scrollAsignado),
                              const SizedBox(height: 40.0),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flex(
                                    direction: isScrolled
                                        ? Axis.vertical
                                        : Axis.horizontal,
                                    children: [
                                      BuildButton(
                                        text: "Iniciar sesion",
                                        isLogin: isLogin,
                                        onPressed: () {
                                          handleChangeIsLoading(true);
                                        },
                                      ),
                                      SizedBox(
                                        width: !isScrolled ? 20 : 0,
                                        height: isScrolled ? 0 : 20,
                                      ),
                                      BuildButton(
                                        text: "registrarse",
                                        isLogin: !isLogin,
                                        secondary: true,
                                        onPressed: () {
                                          handleChangeIsLoading(false);
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: 30.0,vertical: 20),
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: isLogin
                                ? const FormLogin()
                                : const FormSignup()),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
