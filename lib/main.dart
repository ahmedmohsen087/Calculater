import 'package:calcultor/calculator_screen.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calaulator',
      routes: {
        CalaulatorScreen.routName:(_)=> CalaulatorScreen(),
      },
      initialRoute: CalaulatorScreen.routName,
    );
  }
}
