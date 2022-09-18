import 'package:datas/screens/control_screen.dart';
import 'package:datas/screens/login_screen.dart';
import 'package:datas/screens/test_screen.dart';
import 'package:flutter/material.dart';
 // gfjhgjhfhjfjhffh
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ControlScreen(),

    );
  }
}
