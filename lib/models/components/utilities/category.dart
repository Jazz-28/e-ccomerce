
import 'package:e_commerce/models/colors.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories=['Hand Bag','Jewellery','Foot Wear','Dresses','Perfumes'];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: ((context, index) => builtCategory(index))),
      ),
    );
  }

  GestureDetector builtCategory(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex=index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultpadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                categories[index],
                style: TextStyle( fontWeight:FontWeight.bold,
                color:selectedIndex ==index? kTextColor:kTextLightColor)),
                
            Container(
              margin: const EdgeInsets.only(top: kDefaultpadding/3),
              height: 2,
              width:30,
              color: selectedIndex==index?  Colors.lightGreen:Colors.transparent,)    
          ],
        ),
      ),
    );
  }
}