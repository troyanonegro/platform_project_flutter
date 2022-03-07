import 'package:flutter/material.dart';

import 'package:platform_project/screens/login_user_screen.dart';
import 'package:platform_project/screens/promotions_screen.dart';
import 'package:platform_project/theme/app_themes.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title:'Material App',
      home: LoginUserScreen(),
      theme: AppTheme.redTheme,

    );
  }
}
