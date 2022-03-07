import 'package:flutter/material.dart';
import 'package:platform_project/screens/business_screen.dart';
import 'package:platform_project/screens/promotions_screen.dart';
class DrawNavigator extends StatelessWidget {
  const DrawNavigator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}