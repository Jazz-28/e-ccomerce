import 'package:e_commerce/models/details/details.dart';
import 'package:e_commerce/models/utilities/item_card.dart';
import 'package:e_commerce/models/utilities/product.dart';
import 'package:e_commerce/screen%20pages/Components/item_phone.dart';
import 'package:e_commerce/screen%20pages/utilities/phones_page.dart';
import 'package:flutter/material.dart';

class Example3 extends StatelessWidget {
  const Example3({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        Expanded(child: 
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: GridView.builder(
            itemCount: product.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5 ,
            crossAxisSpacing: 5,
             childAspectRatio:0.7,
            ),
           
           // ignore: prefer_const_constructors
          itemBuilder:(context,index)=> ItemPhone(product1:product1[index],press: (){})),
        )),
      ],
    );
  }
}