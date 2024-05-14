import 'package:e_commerce/models/colors.dart';
import 'package:e_commerce/models/utilities/product.dart';
import 'package:flutter/material.dart';


class ItemCard extends StatelessWidget {
 final Product product;
 final Function()? press;
   const ItemCard({
   super.key,
    required this.press,
    required this.product,
     
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      
      child: SingleChildScrollView(
        child: GestureDetector(
          onTap: press,
          child: Column(
            
           crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
              Container(
                  width: 250,
               height: 200,
                
               
               
               decoration: BoxDecoration(
                color:  Colors.white60,
                borderRadius: BorderRadius.circular(16)
                ),
               child: Expanded(
                flex: 2,
                 child: Image.asset(product.image,
                             fit: BoxFit.cover,
                 ),
               ),
               
              ),
             
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(product.title,style: const TextStyle(color: kTextLightColor),),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(product.description,style: const TextStyle(color: kTextColor,height: 1),),
              ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 8),
                 child: Text('KSh ${product.price}',style: const TextStyle(fontWeight: FontWeight.bold),),
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
