import 'package:flutter/material.dart';
import 'package:myapp/presentation/widget/button_app.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  _FormLoingState createState() => _FormLoingState();
}

class _FormLoingState extends State<FormLogin> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerpassword = TextEditingController();
  bool loading = false;
  String showData = "";
  Future<void> submitForm() async {
    await Future.delayed(const Duration(seconds: 2));
    showData = "${_controllerEmail.value} ${_controllerpassword.value}";
    print("se envio con exito el formulario...");
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Llene el formulario para iniciar sesion",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              controller: _controllerEmail,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              controller: _controllerpassword,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 20.0),
            showData.isNotEmpty ? Text(showData) : Container(),
            Center(
              child: ButtonApp(
                onPressed: () async {
                  submitForm();
                },
                text: "Aceptar",
              ),
            )
          ],
        ));
  }
}
