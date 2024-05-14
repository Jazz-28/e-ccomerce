import 'package:e_commerce/models/colors.dart';
import 'package:e_commerce/models/components/utilities/category.dart';
import 'package:e_commerce/models/details/details.dart';
import 'package:e_commerce/models/utilities/item_card.dart';
import 'package:e_commerce/models/utilities/product.dart';
import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Container(
          color: Colors.white,
           child:  Row(
             children: [
               Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultpadding),
                  child: Text("Women",style:Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),),
                ),

             ],
           ),),
          const  SizedBox(height: 5,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal:8),
             child: Container(
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.white,),
             
              child: const Categories()),
           ),
           const SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10),
            // child:Text("data")
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
          ),
          ],
        
      
       
    
    );
  }
}


