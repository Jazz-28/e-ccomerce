import 'package:e_commerce/models/colors.dart';
import 'package:e_commerce/models/details/components/body.dart';
import 'package:e_commerce/models/utilities/product.dart';
import 'package:flutter/material.dart';


class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
       const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Colors"),
              Row(
                children: <Widget>[
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(
                    color: Color(0xFFF8C078),
                  ),
                  ColorDot(
                    color: Color(0xFFA29B9B),
                  ),
                  ColorDot(
                    color: Color(0xFFF92905),
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text:  TextSpan( style:const TextStyle(color: kTextColor),
                  children: [ const TextSpan(text: 'Size'),
                   TextSpan(
                    text: '${product.size} cm',
                    style: Theme.of(context).textTheme.headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold,)
                   )
                  ])),
        ),
               
      ],
    );
  }
}
