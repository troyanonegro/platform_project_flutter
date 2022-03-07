import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor =  Color.fromARGB(200, 255, 82, 82);//Otro
  static const Color appbarColor = Color.fromARGB(255, 197, 14, 41);
  static const Color backGroundColor = Color.fromARGB(200, 255, 82, 82);
  static const Color iconColor = Colors.indigoAccent;
  static const Color? textButtonColor = Colors.black;

  static final ThemeData lighTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    //color primario
    primaryColor: primaryColor,
    //AppBar Theme
    appBarTheme: const AppBarTheme(color: appbarColor, elevation: 5),
    iconTheme: const IconThemeData(
      color: iconColor,
      size: 13,
      opacity: 1,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: textButtonColor,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    //color primario
    primaryColor: primaryColor,
    //AppBar Theme
    appBarTheme: const AppBarTheme(
      color: appbarColor,
      elevation: 0,
    ),

    iconTheme: const IconThemeData(
      color: iconColor,
      size: 13,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: textButtonColor,
      ),
    ),
  );

  static final ThemeData redTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backGroundColor,

    //color primario
    primaryColor: primaryColor,
    //AppBar Theme
    appBarTheme: const AppBarTheme(
      color: appbarColor,
      elevation: 0,
    ),
    iconTheme: const IconThemeData(
      color: iconColor,
      size: 13,
    ),
    /* buttonTheme:  ButtonThemeData(
      buttonColor: Colors.black
    )
    ,*/
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: textButtonColor,
      ),
    ),
    dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(10))),
    inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: textButtonColor),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        )),
  );
}
