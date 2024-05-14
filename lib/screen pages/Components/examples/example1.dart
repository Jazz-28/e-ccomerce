import 'package:e_commerce/models/details/details.dart';
import 'package:e_commerce/models/utilities/item_card.dart';
import 'package:e_commerce/models/utilities/product.dart';
import 'package:flutter/material.dart';

class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          itemBuilder:(context,index)=> ItemCard(product: product[index],press: ()=> Navigator.push(context,
           MaterialPageRoute(builder:(context)=>DetailScreen(product: product[index]))),)),
        )),
      ],
    );
  }
}