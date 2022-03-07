import 'package:flutter/material.dart';
import 'package:platform_project/libraries/components/draw_navigaror.dart';
import 'package:platform_project/ui/input_decorations.dart';

import 'business_screen.dart';

class PromotionsScreen extends StatelessWidget {
  const PromotionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        /* leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),*/

        centerTitle: true,
        title: Text(
          "GoGoGo",
          style: TextStyle(fontSize: 30),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add_circle_outline_rounded,
              size: 30,
            ),
            onPressed: () {
             // displayDialogPromotion(context)
            },
          ),
          /*  IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),*/
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                'Victor ',
                style: TextStyle(fontSize: 30),
              ),
              accountEmail: Text(
                'zamoramartin@gmail.com',
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.apartment_outlined),
              title: Text('Tus Negocios'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => BuinessScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: Text('Promocciones'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => PromotionsScreen()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
/*
void displayDialogPromotion(BuildContext context) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: Text(
            'GoGoGo',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecorations.FromInputDecoration(
                      labelText: 'Nombre', prefixIcon: Icons.store_outlined),
                  validator: (value) {
                    return (value != null && value.length >= 6)
                        ? null
                        : 'Contraseña debe de 6 caractes';
                  })
            ],
          ),
          actions: [
            TextButton(
                child: Text('Cancelar'),
                onPressed: () {
                  Navigator.pop(context);
                }),
            TextButton(
                child: Text('Guardar'),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        );
      });
}

 */
