import 'package:e_commerce/models/colors.dart';
import 'package:e_commerce/models/utilities/product.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultpadding),
      child: Text(product.description,style:const TextStyle(height: 1.5),),
    );
  }
}
