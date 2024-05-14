import 'package:e_commerce/screen%20pages/homeScreen.dart';
import 'package:flutter/material.dart';

import 'models/Women/women_screen.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green
       
      ),
     home:const MyHomeScreen()
    );
  }
}


