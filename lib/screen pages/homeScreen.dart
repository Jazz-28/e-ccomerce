import 'package:e_commerce/models/Women/women_screen.dart';
import 'package:e_commerce/models/colors.dart';
import 'package:e_commerce/navigator/cart.dart';
import 'package:e_commerce/navigator/profile.dart';
import 'package:e_commerce/screen%20pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  final List<Widget> _pages = [
    const MyHomePage(),
    const WomenScreen(),
    const MyCartPage(),
    const MyProfilePage()

 


];

  int _selectedindex= 0;
  void selecteditem (int index){
    setState(() {
      _selectedindex=index;
    });
 
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     
      body:  _pages[_selectedindex],
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 30.0,vertical: 4),
          child: GNav(
            backgroundColor: Colors.transparent,
            color: kTextColor,
            
            
            activeColor: Colors.lightGreen,
            tabBackgroundColor: const Color.fromARGB(255, 243, 250, 245),
            gap: 10,
            onTabChange: selecteditem,
            padding: const EdgeInsets.all(16),
            tabs:const [
              GButton(icon:Icons.home,text: 'Home',),
              GButton(icon: Icons.message,text: 'Chat',),
              GButton(icon: Icons.trolley,text: 'Cart'),
              GButton(icon: Icons.person,text: 'Account'),
          
            ]),
        ),
      )
    );
  }
}

