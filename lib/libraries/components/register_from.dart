import 'package:flutter/material.dart';
import 'package:platform_project/ui/input_decorations.dart';

class FormRegister extends StatelessWidget {
  const FormRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Container(
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.text,
                decoration: InputDecorations.FromInputDecoration(
                    labelText: 'Nombre\'s',
                    hintText: 'Nombre de Usuario',
                    prefixIcon: Icons.supervised_user_circle),
                validator: (value) {
                  return (value != null && value.length >= 6)
                      ? null
                      : 'Nombre debe de 6 o mas caractes';
                }),

          const SizedBox(height: 15),
            TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.text,
                decoration: InputDecorations.FromInputDecoration(
                    labelText: 'Apellidos\'s',
                    hintText: 'Apellido de Usuario',
                    prefixIcon: Icons.supervised_user_circle),
                validator: (value) {
                  return (value != null && value.length >= 6)
                      ? null
                      : 'Apellidos debe de 6 o mas caractes';
                }),
            const SizedBox(height: 15),
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.FromInputDecoration(
                  labelText: 'Correo electronico',
                  hintText: 'victor@example.com',
                  prefixIcon: Icons.alternate_email),
              validator: (value) {
                String pattern =
                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

                RegExp regExp = new RegExp(pattern);
                return regExp.hasMatch(value ?? '') ? null : 'Correo invalido';
              },
            ),
            const SizedBox(height: 15),
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecorations.FromInputDecoration(
                  labelText: 'Contraseña',
                  hintText: 'Ingresa tu contraseña',
                  prefixIcon: Icons.lock_clock_outlined),
            ),
            const SizedBox(height: 15),
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecorations.FromInputDecoration(
                  labelText: 'Confirmar Contraseña',
                  hintText: 'Ingresa tu contraseña',
                  prefixIcon: Icons.lock_clock_outlined),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                return (value != null && value.length >= 6)
                    ? null
                    : 'Contraseña debe de 6 caractes';
              },
            )
          ],
        ),
      ),
    );
  }
}
