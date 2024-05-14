import 'package:e_commerce/models/colors.dart';
import 'package:e_commerce/screen%20pages/utilities/phones_page.dart';
import 'package:flutter/material.dart';


class ItemPhone extends StatelessWidget {
 final Phones product1;
 final Function()? press;
   const ItemPhone({
   super.key,
    required this.press,
    required this.product1,
     
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      
      child: SingleChildScrollView(
        physics:const NeverScrollableScrollPhysics(),
        child: GestureDetector(
          onTap: press,
          child: Column(
            
           crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
              Container(
                  width: 250,
               height: 400,
                
               
               
               decoration: BoxDecoration(
                color:  Colors.white60,
                borderRadius: BorderRadius.circular(16)
                ),
               child: Image.asset(product1.image,
                           fit: BoxFit.cover,
               ),
               
              ),
             
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(product1.title,style: const TextStyle(color: kTextLightColor),),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(product1.description,style: const TextStyle(color: kTextColor,height: 1),),
              ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 8),
                 child: Text('KSh ${product1.price}',style: const TextStyle(fontWeight: FontWeight.bold),),
               ),
               Padding(
                 padding: const EdgeInsets.all(2),
                 child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, color: Colors.amber[500],size: 13,),
                    Icon(Icons.star, color: Colors.amber[500],size: 13,),
                    Icon(Icons.star, color: Colors.amber[500],size: 13,),
                    const Icon(Icons.star, color: kTextColor,size: 13,),
                    const Icon(Icons.star, color: Colors.grey, size: 13,),
                  ],
                             ),
               )
            ],
          ),
        ),
      ),
    );
  }
}
