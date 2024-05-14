import 'package:e_commerce/models/colors.dart';
import 'package:e_commerce/models/Women/utilities/Women_page.dart';
import 'package:e_commerce/screen%20pages/home_page.dart';
import 'package:flutter/material.dart';


class WomenScreen extends StatelessWidget {
  const WomenScreen({super.key});
  
 

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 236, 236),
      appBar: builder(context),
      body: const Body(),
    );
  }

  AppBar builder(context) {
    return AppBar(backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(icon:const Icon(Icons.arrow_back_ios_new,color: Colors.black,) ,
    onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyHomePage())),),
    actions: <Widget>[
      IconButton(onPressed:(){}, icon:const Icon(Icons.search,size: 30,color:Colors.black ,)),
       IconButton( icon: Image.asset('lib/images/cart.png',color: kTextColor,scale: 20,),
       onPressed:(){},),
     const  SizedBox(width: kDefaultpadding/2,)
      
    ],
    );
  }
}