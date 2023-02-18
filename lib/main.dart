import 'package:flutter/material.dart';


import 'package:disenos/screens/basic_desing.dart';
import 'package:disenos/screens/home_screen.dart';
import 'package:disenos/screens/scroll_desing.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light );
    return MaterialApp(
      title: 'Material App',
      // home: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: const [Text('Hello World'), Text('Hello World')],
      // )
      initialRoute: 'home_screen',
      routes: {
        'basic_desing': (context) => const BasicDesingScreen(),
        'scroll_desing': (context) => const ScrollScreen(),
        'home_screen': (context) => const HomeScreen()
      },
    );
  }
}
