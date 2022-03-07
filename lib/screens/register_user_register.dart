import 'package:flutter/material.dart';
import 'package:platform_project/libraries/components/input_text.dart';
import 'package:platform_project/libraries/widgets.dart';
import 'package:platform_project/screens/login_user_screen.dart';
import 'package:platform_project/screens/complete_registration.dart';
import 'package:platform_project/screens/terms_and_conditions.dart';
import 'package:platform_project/services/helpers/apibase_helper.dart';

class RegisterUser extends StatelessWidget {
  const RegisterUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Map<String, String> formValues = {
      'email': 'zamor@gmail.com',
      'first_name': 'Victor',
      'last_name': 'Zamora',
      'password1': '124',
      'password2': '124'
    };
    return Scaffold(
      appBar: CustomPreferredSize(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.keyboard_return),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: const Text('Bienvenido',
                    style: TextStyle(fontSize: 50, color: Colors.white)),
              ),
              SizedBox(height: 50),
              SizedBox(height: 20),
              InputText(
                  labelText: 'Nombre',
                  hintText: 'Ingrese su Nombre',
                  prefixIcon: Icons.supervised_user_circle,
                  formProperty: 'first_name',
                  formValues: formValues),
              SizedBox(height: 20),
              InputText(
                  labelText: 'Apellido',
                  hintText: 'Ingrese su Apellido',
                  keyboardType: TextInputType.name,
                  formProperty: 'last_name',
                  formValues: formValues),
              SizedBox(height: 20),
              InputText(
                  labelText: 'Correo electronico',
                  hintText: 'Ingrese su correo',
                  prefixIcon: Icons.alternate_email_outlined,
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues),
              SizedBox(height: 20),
              InputText(
                  labelText: 'Contraseña',
                  hintText: 'Ingrese su Contraseña',
                  prefixIcon: Icons.lock_clock_rounded,
                  keyboardType: TextInputType.name,
                  formProperty: 'password1',
                  formValues: formValues),
              SizedBox(height: 20),
              InputText(
                  labelText: 'Repetir Contraseña',
                  hintText: 'Ingrese su Contraseña',
                  prefixIcon: Icons.lock_clock_outlined,
                  keyboardType: TextInputType.name,
                  formProperty: 'password2',
                  formValues: formValues),
              SizedBox(height: 50),
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
                  child: const Text('Registrarse',
                      style: TextStyle(fontSize: 25, color: Colors.white)),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CompleteRegistration()),
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
                        child: const Text(
                          'Terminos y Condiciones',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
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
                        child: const Text(
                          'Iniciar Seccion',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginUserScreen(),
                          ),
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
    );
  }
}
