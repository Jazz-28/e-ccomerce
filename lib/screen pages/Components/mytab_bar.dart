import 'package:e_commerce/screen%20pages/Components/examples/example1.dart';
import 'package:e_commerce/screen%20pages/Components/examples/example2.dart';
import 'package:e_commerce/screen%20pages/Components/examples/example3.dart';
import 'package:flutter/material.dart';


class MyTabBar extends StatelessWidget {
 
  const MyTabBar({super.key,});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TabBar(tabs: [
          Text("AirPods"),
          Text("Laptops"),
          Text("Shoes"),
        ]),
    TabBarView(
      children: [
      Example1(),
      Example2(),
      Example3(),
    ])
      ],) ;
  }
}