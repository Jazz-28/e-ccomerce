import 'package:e_commerce/screen%20pages/utilities/Body_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    
      backgroundColor: Color.fromARGB(255, 255, 249, 249),
      
      body: HomeBody()
      ,
    );
  }
}