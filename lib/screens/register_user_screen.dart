import 'package:flutter/material.dart';
import 'package:platform_project/libraries/widgets.dart';
import 'package:platform_project/services/helpers/apibase_helper.dart';

class RegisterUser extends StatelessWidget {
  const RegisterUser({Key? key}) : super(key: key);

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
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.keyboard_return),
                  color: Colors.white,
                  onPressed: () {},
                )),
            Container(
              alignment: Alignment.center,
              child: const Text('Bienvenido',
                  style: TextStyle(fontSize: 50, color: Colors.white)),
            ),
            SizedBox(height: 50),
            const FormRegister(),
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
                child: const Text('Crear Cuenta'),
              ),
              onPressed: () {},
            ),

            Container(
              padding: const EdgeInsets.symmetric(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(height: 400),
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
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(),
                    disabledColor: Colors.red,
                    color: const Color.fromARGB(255, 255, 134, 127),
                    elevation: 0,
                    child: Container(
                      //margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.symmetric(),
                      alignment: Alignment.center,
                      child: const Text('Iniciar Seccion'),
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
