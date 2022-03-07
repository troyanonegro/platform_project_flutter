import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:platform_project/Blocs/authen/authentication_bloc.dart';

import 'package:platform_project/libraries/components/input_text.dart';
import 'package:platform_project/libraries/widgets.dart';
import 'package:platform_project/services/helpers/apibase_helper.dart';

import 'package:platform_project/screens/register_user_register.dart';
import 'package:platform_project/screens/terms_and_conditions.dart';
import 'package:platform_project/screens/business_screen.dart';

import '../Blocs/login/login_bloc.dart';

class LoginUserScreen extends StatelessWidget {
  const LoginUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'email': 'zamor@gmail.com',
      'password': '124',
    };
    return Scaffold(
        appBar: CustomPreferredSize(),
        body: Container(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: myFormKey,
              child: Column(
                children: <Widget>[
                  Text(
                    'GoGoGo',
                    style: TextStyle(fontSize: 50, color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  CustomFadeImage(
                      imageUrl:
                          'https://cdn-icons-png.flaticon.com/512/2991/2991148.png',
                      imageHeight: 200),
                  SizedBox(height: 20),
                  InputText(
                      labelText: 'Correo electronico',
                      hintText: 'Ingrese su correo',
                      prefixIcon: Icons.alternate_email_outlined,
                      keyboardType: TextInputType.emailAddress,
                      formProperty: 'email',
                      formValues: formValues),
                  const SizedBox(height: 20),
                  InputText(
                      labelText: 'Password',
                      hintText: 'Ingrese Contraseña',
                      prefixIcon: Icons.lock_clock_outlined,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      formProperty: 'email',
                      formValues: formValues),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Olvidaste tu contraseña?',
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ]),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    disabledColor: Colors.red,
                    color: const Color.fromARGB(255, 197, 14, 41),
                    elevation: 0,
                    child: Container(
                      //margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.center,
                      child: const Text(
                        'Ingresar',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                    onPressed: () {
                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario invalido');
                        return;
                      }
                      print(formValues);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BuinessScreen()),
                      );
                    },
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(),
                          disabledColor: Colors.red,
                          color: const Color.fromARGB(255, 255, 134, 127),
                          elevation: 0,
                          child: Container(
                            //margin: const EdgeInsets.all(20),

                            alignment: Alignment.center,
                            child: const Text('Terminos y Condiciones'),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TermnsConditions()),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(),
                          disabledColor: Colors.red,
                          color: const Color.fromARGB(255, 255, 134, 127),
                          elevation: 0,
                          child: Container(
                            //margin: const EdgeInsets.all(20),
                            padding: const EdgeInsets.symmetric(),
                            alignment: Alignment.center,
                            child: const Text('Crear Cuenta'),
                          ),
                          onPressed: () {
                            FocusScope.of(context).requestFocus(FocusNode());
                            if (!myFormKey.currentState!.validate()) {
                              print('Formulario invalido');
                              return;
                            }
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterUser()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
