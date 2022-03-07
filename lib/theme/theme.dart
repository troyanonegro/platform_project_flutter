import 'package:flutter/material.dart';

///*************** ThemeType ***************
enum ThemeType {ligt,dart }

/// Headline Text Documentation
// Extremely large text.
//final TextStyle headline1;

// Very, very large text.
// Used for the date in the dialog shown by [showDatePicker].
// final TextStyle headline2;

// Very large text.
//final TextStyle headline3;

// Large text.
//final TextStyle headline4;

// Used for large text in dialogs (e.g., the month and year in the dialog
// shown by [showDatePicker]).
//final TextStyle headline5;

// Used for the primary text in app bars and dialogs (e.g., [AppBar.title]
// and [AlertDialog.title]).
//final TextStyle headline6;

/// Subtitle Text Documentation
// Used for the primary text in lists (e.g., [ListTile.title]).
//final TextStyle subtitle1;

// For medium emphasis text that's a little smaller than [subtitle1].
//final TextStyle subtitle2;

/// Subtitle Text Documentation
// Used for emphasizing text that would otherwise be [bodyText2].
//final TextStyle bodyText1;

// The default text style for [Material].
//final TextStyle bodyText2;

/// Other Text Documentation
// Used for auxiliary text associated with images.
//final TextStyle caption;

// Used for text on [RaisedButton] and [FlatButton].
//final TextStyle button;

// The smallest style.
// Typically used for captions or to introduce a (larger) headline.
//final TextStyle overline;

///*************** darkTheme ***************
ThemeData darkTheme = ThemeData.dark().copyWith(
  // Sets the dark theme, this will set the auto colors accordingly
  brightness: Brightness.dark,
  primaryColor: Color(0xFF2C2C1F),
  accentColor: Color(0xFF697331),
  hintColor: Colors.grey,
  dividerColor: Colors.white,
  scaffoldBackgroundColor: Colors.black,
  canvasColor: Color(0xFF697331),

  bottomSheetTheme: BottomSheetThemeData(modalBackgroundColor: Colors.transparent),

  // Button theme
  buttonTheme: ButtonThemeData(
    buttonColor: Color(0xFF697331), // Color Button
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      //side: BorderSide(color: Color(0xFF697331)),
    ),
    textTheme:
    ButtonTextTheme.primary, // This auto select the color for the text
  ),

  textTheme: TextTheme(
    subtitle2: TextStyle(
      color: Colors.white,
      fontFamily: 'AcuminPro',
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
    ),
    subtitle1: TextStyle(
      color: Colors.white,
      fontFamily: 'AcuminPro',
      fontWeight: FontWeight.w500,
      fontSize: 14.0,

    ),
    bodyText2: TextStyle(
      color: Colors.white,
      fontFamily: 'AcuminPro',
      fontWeight: FontWeight.normal,
      fontSize: 12.0,
    ),
    bodyText1: TextStyle(
      color: Colors.white,
      fontFamily: 'AcuminPro',
      fontWeight: FontWeight.w500,
      fontSize: 12.0,
    ),
  ),
);

///*************** lightTheme ***************
ThemeData lightTheme = ThemeData.light().copyWith(
// Sets the dark theme, this will set the auto colors accordingly
  brightness: Brightness.dark,
  primaryColor: Color(0xFF2C2C1F),
  accentColor: Color(0xFF697331),
  hintColor: Colors.grey,
  dividerColor: Colors.grey,
  scaffoldBackgroundColor: Colors.white,
  canvasColor: Colors.white,

  bottomSheetTheme: BottomSheetThemeData(modalBackgroundColor: Colors.transparent),

  // Button theme
  buttonTheme: ButtonThemeData(
    buttonColor: Color(0xFF697331), // Color Button
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      //side: BorderSide(color: Color(0xFF697331)),
    ),
    textTheme:
    ButtonTextTheme.primary, // This auto select the color for the text
  ),

  textTheme: TextTheme(
    subtitle2: TextStyle(
      color: Colors.black,
      fontFamily: 'AcuminPro',
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
    ),
    subtitle1: TextStyle(
      color: Colors.black,
      fontFamily: 'AcuminPro',
      fontWeight: FontWeight.w500,
      fontSize: 14.0,

    ),
    bodyText2: TextStyle(
      color: Colors.black,
      fontFamily: 'AcuminPro',
      fontWeight: FontWeight.normal,
      fontSize: 12.0,
    ),
    bodyText1: TextStyle(
      color: Colors.black,
      fontFamily: 'AcuminPro',
      fontWeight: FontWeight.w500,
      fontSize: 12.0,
    ),
  ),
);


ThemeData redTheme = ThemeData.light().copyWith(
// Sets the dark theme, this will set the auto colors accordingly
  brightness: Brightness.light,
  primaryColor: Color(0xFF2C2C1F),

  accentColor: Color(0xFF697331),
  hintColor: Colors.grey,
  dividerColor: Colors.grey,
  scaffoldBackgroundColor:  Color.fromARGB(200, 255, 82, 82),
  canvasColor: Colors.white,

  bottomSheetTheme: BottomSheetThemeData(modalBackgroundColor: Colors.transparent),

  appBarTheme: AppBarTheme(
    color: Color.fromARGB(255, 197, 14, 41),
    elevation: 0,
  ),

  // Button theme
  buttonTheme: ButtonThemeData(
    buttonColor: Color(0xFF697331), // Color Button
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      //side: BorderSide(color: Color(0xFF697331)),
    ),
    textTheme:
    ButtonTextTheme.primary, // This auto select the color for the text
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: Colors.black,
    ),
  ),
  textTheme: TextTheme(
    subtitle2: TextStyle(
      color: Colors.black,
      fontFamily: 'AcuminPro',
      fontWeight: FontWeight.bold,
      fontSize: 16.0,
    ),
    subtitle1: TextStyle(
      color: Colors.black,
      fontFamily: 'AcuminPro',
      fontWeight: FontWeight.w500,
      fontSize: 14.0,

    ),
    bodyText2: TextStyle(
      color: Colors.black,
      fontFamily: 'AcuminPro',
      fontWeight: FontWeight.normal,
      fontSize: 12.0,
    ),
    bodyText1: TextStyle(
      color: Colors.black,
      fontFamily: 'AcuminPro',
      fontWeight: FontWeight.w500,
      fontSize: 12.0,
    ),
  ),
);