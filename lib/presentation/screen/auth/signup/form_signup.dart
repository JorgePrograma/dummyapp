import 'package:flutter/material.dart';

class FormSignup extends StatefulWidget {
  const FormSignup({super.key});

  @override
  _FormSignupState createState() => _FormSignupState();
}

class _FormSignupState extends State<FormSignup> {
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerLastName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerpassword = TextEditingController();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Llene el formulario para crear su cuenta",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 20.0),
          const Text(
            "Datos personales",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 10.0),
          TextFormField(
            controller: _controllerName,
            decoration: const InputDecoration(labelText: 'Nombre'),
          ),
          const SizedBox(height: 20.0),
          TextFormField(
            controller: _controllerLastName,
            decoration: const InputDecoration(labelText: 'Apellido'),
          ),
          const SizedBox(height: 20.0),
          const Text(
            "Datos de la cuenta",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 10.0),
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
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Aceptar"),
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    ));
  }
}
