import 'package:e_commerce/models/colors.dart';
import 'package:e_commerce/models/details/components/body.dart';
import 'package:e_commerce/models/utilities/product.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({super.key,required this.product});
  
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: product.color,
      appBar: builder(context),
      body: MyBodyPage(product: product,),
    );
  }
   AppBar builder(context) {
    return AppBar(backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(icon:const Icon(Icons.arrow_back_ios_new,color: Colors.black,) ,
    onPressed:()=> Navigator.pop(context as BuildContext)),
    actions: <Widget>[
      IconButton(onPressed:(){}, icon:const Icon(Icons.search,size: 30,color:Colors.black ,)),
       IconButton( icon: Image.asset('lib/images/cart.png',color: kTextColor,scale: 20,),
       onPressed:(){},),
      const  SizedBox(width: kDefaultpadding/2,)
      
    ],
    );
  }
}