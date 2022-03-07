import 'package:flutter/material.dart';

class TermnsConditions extends StatelessWidget {
  const TermnsConditions({Key? key}) : super(key: key);

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
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: Text("AppBarDemo"),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: <Widget>[
            PreferredSize(
              preferredSize: const Size.fromHeight(30),
              child: AppBar(
                automaticallyImplyLeading: false,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(Icons.keyboard_backspace_outlined),
                color: Colors.white,
                iconSize: 30,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const Text('Terminos y Condicciones!',
                style: TextStyle(fontSize: 40, color: Colors.white)),
            const SizedBox(height: 20),
            const Text('Protege tus intereses y contenidos',
                style: TextStyle(fontSize: 20, color: Colors.white)),
            const SizedBox(height: 20),
            const Text(
              'Los términos y condiciones, también conocidos como términos de servicio (ToS), términos de uso o acuerdo de licencia con el usuario final (EULA, Acuerdo de licencia de usuario final), definen las condiciones de uso de tu web, aplicación o servicio de forma jurídicamente vinculante. Son fundamentales para proteger los derechos de autor de tu contenido y para protegerte de posibles responsabilidades.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children:const [
                    ClipOval(
                      child: Icon(
                        Icons.extension,
                        size: 100,
                      ),
                    ),
                    Text('Terminos '),
                  ],
                ),
                Column(
                  children:const [
                    ClipOval(
                        child: Icon(
                      Icons.extension,
                      size: 100,
                    )),
                    Text('Condiciones')
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
