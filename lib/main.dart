import 'package:flutter/material.dart';
import 'package:flutterapp/screens/home_screen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "NidhiChat",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
      accentColor: Color(0xFFFEF9EB)
    ),
      home: HomeScreen(),
    );
  }
}