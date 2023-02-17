import 'package:disenos/screens/basic_desing.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // home: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: const [Text('Hello World'), Text('Hello World')],
      // )
      initialRoute: 'basic_desing',
      routes: {'basic_desing': (context) => const BasicDesingScreen()},
    );
  }
}
