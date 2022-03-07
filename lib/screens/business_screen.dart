import 'package:flutter/material.dart';
import 'package:platform_project/screens/promotions_screen.dart';
import 'package:platform_project/libraries/components/draw_navigaror.dart';

import 'package:platform_project/ui/input_decorations.dart';

class BuinessScreen extends StatelessWidget {
  const BuinessScreen({Key? key}) : super(key: key);

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
            onPressed: () {/*
            => displayDialogBusiness(conte
            */},
          ),
        ],
      ),
      drawer:Drawer(
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
