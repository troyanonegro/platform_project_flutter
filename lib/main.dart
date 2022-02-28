import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:platform_project/blocs/blocs.dart';
import 'package:platform_project/libraries/components/loadingIndicator.dart';


/// DEBUG
import "package:flutter/rendering.dart";
import 'package:platform_project/bloc_delegates.dart';


import 'package:platform_project/screens/screens.dart';


import 'theme/theme.dart';

///***************************************************************************
/// One Main to rule them all...
///***************************************************************************
void main() {
  /// To debug the alignment constraints
  debugPaintSizeEnabled = false;

  /// To debug Bloc
  Bloc.observer = SimpleBlocObserver();

  runApp(MultiBlocProvider(
    providers: [
      /// Theme bloc
      BlocProvider(
        create: (context) {
          return ThemeBloc(ThemeState(theme: redTheme));
        },
      ),
    ],
    child: PlatformApp(),
  ));
}

///***************************************************************************
/// App, its just the app
///***************************************************************************
class PlatformApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocListener<ThemeBloc, ThemeState>(
      listener: (context, state) {},
      child: BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Platform App",
          theme: state.theme,
          home: Stack(children: <Widget>[
            /// Authentication bloc here
            //RegisterUser(),
           // LoginUserScreen(),/
            CompleteRegistration()

          ]),

        );
      }),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        ),
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
            const SizedBox(height: 20),

            const SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 18),
              ),
              onPressed: () {},
              child: const Text(
                'Olvidaste tu contraseña?',
                textAlign: TextAlign.end,
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
            Row(
              children: const <Widget>[
                ElevatedButton(
                  onPressed: null,
                  child: Text('Login'),
                ),
                ElevatedButton(
                  onPressed: null,
                  child: Text('Login'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
