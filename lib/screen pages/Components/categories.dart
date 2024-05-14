import 'package:e_commerce/screen%20pages/Components/mytab_bar.dart';
import 'package:flutter/material.dart';

class MyCategories extends StatefulWidget {
  const MyCategories({super.key});

  @override
  State<MyCategories> createState() => _MyCategoriesState();
}

class _MyCategoriesState extends State<MyCategories> {
  void searchButtonTapped(){}
  //
 /* List tabOptions=const[
    ["AirPods",Example1()],
    ["Laptops",Example2()],
    ["Shoes",Example3()],
  ];*/

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:3, 
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children:const [
        SizedBox(
          height: 400,
          child:
           Expanded(
             child: MyTabBar(
             
                     ),
           ))
          ],
        ),
      ));
  }
}