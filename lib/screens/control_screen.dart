import 'package:datas/screens/home_screen.dart';
import 'package:datas/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ControlScreen extends StatefulWidget {



  @override
  State<ControlScreen> createState() => _ControlScreenState();
}

class _ControlScreenState extends State<ControlScreen> {
    String? email;
    getData() async{
      SharedPreferences  Preferences= await SharedPreferences.getInstance();

    setState(() {
      email=Preferences.getString('email');
    //  Preferences.remove("email");
      print(email);
    });

    }
    @override
  void initState() {

    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return email==null? LoginScreen() : HomeScreen();
  }
}
