import 'package:e_commerce/models/colors.dart';
import 'package:e_commerce/models/utilities/product.dart';
import 'package:flutter/material.dart';

class ProductTitlewithImage extends StatelessWidget {
  const ProductTitlewithImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
       padding:const  EdgeInsets.symmetric(horizontal: kDefaultpadding),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
          const Text("Pure Thread Nike sport shoe",style: TextStyle(color: Colors.white),),
           Text(product.title,style:Theme.of(context).textTheme
           .headlineMedium
           ?.copyWith(color: Colors.white,fontWeight: FontWeight.bold),),
           Row(
             children:<Widget> [
               RichText(text: TextSpan(
                 children: [
                  const TextSpan(text:'Price'),
                   TextSpan(text: "\$${product.price}",style:Theme.of(context).textTheme
           .headlineMedium
           ?.copyWith(color: Colors.white,fontWeight: FontWeight.bold),),
           
                 ]
               )),
              const SizedBox(width: kDefaultpadding,),
               Expanded(child: Image.asset(product.image,fit: BoxFit.fill,),)
             ],
           )
         ],
       ),
    
     );
  }
}