import 'package:flutter/material.dart';


class CompleteRegistration extends StatelessWidget {
  const CompleteRegistration({Key? key}) : super(key: key);

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
                icon: const Icon(Icons.keyboard_backspace_outlined),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
            SizedBox(height: 100),
            Container(
              height: 680,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:const [
                  Text('GRACIAS!',
                      style: TextStyle(fontSize: 50, color: Colors.white)),
                  Text('Haz quedado regitrado en GoGoGo',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  SizedBox(height: 20),
                  Text(
                    'Te enviamos un correo para que confirmes tu registro',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 100),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
