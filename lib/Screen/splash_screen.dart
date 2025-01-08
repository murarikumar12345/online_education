import 'dart:async';

import 'package:flutter/material.dart';
import 'package:onlineeducation_app/Screen/login_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   void initState(){
     super.initState();
     Timer(Duration(seconds: 2),(){
       Navigator.push(context,
        MaterialPageRoute(builder: (context)=>LoginScreen())
       );
     });
   }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Image(image: AssetImage('images/imageone.png'),),
      ),
    );
  }
}
