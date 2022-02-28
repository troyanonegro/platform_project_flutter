import 'package:flutter/material.dart';
import 'package:platform_project/libraries/widgets.dart';
import 'package:platform_project/services/helpers/apibase_helper.dart';

class LoginUserScreen extends StatelessWidget {
  const LoginUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(30),
        child: AppBar(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: const Text('GoGoGo',
                  style: TextStyle(fontSize: 50, color: Colors.white)),
            ),
            SizedBox(height: 20),
            const CustomFadeImage(),
            const FormLogin(),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 18),
              ),
              onPressed: () {},
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  'Olvidaste tu contraseña?',
                  textAlign: TextAlign.end,
                ),
              ),
            ),
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
                child: const Text('Ingresar'),
              ),
              onPressed: () {},
            ),
            SizedBox(height: 230,),
            Container(
              padding: const EdgeInsets.symmetric(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  MaterialButton(
                    shape: RoundedRectangleBorder(),
                    disabledColor: Colors.red,
                    color: const Color.fromARGB(255, 255, 134, 127),
                    elevation: 0,
                    child: Container(
                      //margin: const EdgeInsets.all(20),

                      alignment: Alignment.center,
                      child: const Text('Terminos y Condiciones'),
                    ),
                    onPressed: () {},
                  ),MaterialButton(
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
                    onPressed: () {},
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
