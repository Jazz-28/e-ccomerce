import 'package:e_commerce/models/colors.dart';
import 'package:e_commerce/screen%20pages/Components/categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
     children: [
     const SizedBox(height: 45,),
   Expanded(
     child: Container(
     
     decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(8), color: Colors.white,),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children:<Widget> [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: kDefaultpadding),
             child: Text('Discover',style:Theme.of(context)
                 .textTheme
                 .titleLarge
                 ?.copyWith(fontWeight: FontWeight.bold,fontSize: 26),),
           ),
           //icon bell
     
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: kDefaultpadding),
             child: IconButton(onPressed: (){}, icon:const Icon(Icons.notifications_rounded)),
           )
         ],
       ),
     ),
   ),
                  const  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color:Colors.white,
                              border: Border.all( color:const Color.fromARGB(255, 1, 0, 0)),
                              borderRadius: BorderRadius.circular(8)
                              ),
                              child:  Row(
                                children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: SizedBox(
                                    height: 35,
                                    child: Image.asset('lib/icons/search1.png',color: kTextLightColor,),
                                  ),
                                ),
                             const Flexible(
                               child: TextField(decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search Items......',
                                hintStyle: TextStyle(color:kTextLightColor ),
                                ),),
                             ),
                                ],
                              ),
                          ),
                        ),
                       const SizedBox(width: 20,),
                        Container(
                          decoration: BoxDecoration(
                             color:const Color.fromARGB(255, 73, 205, 79),
                             borderRadius: BorderRadius.circular(12),
                          ),
                         
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('lib/icons/prefere.png',color: Colors.white,),
                          ),
                        )
                      ],
                    ),
                  ),
                 const  SizedBox(height: 15,),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 8),
                   child: Container(
                    decoration: BoxDecoration(color:const Color.fromARGB(255, 73, 205, 79),
                    borderRadius: BorderRadius.circular(12),
                   
                    ),
                    height: 130,
                    width: 400,
                   ),
                 ),
                 
              const Padding(
                 padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:<Widget> [
                   Text('Categories',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black87),),
                   Text('See all',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color:Color.fromARGB(255, 73, 205, 79)),),
                    ],
                   ),
               ),
           const  Expanded(child: MyCategories())

     ],
    );
  }
}