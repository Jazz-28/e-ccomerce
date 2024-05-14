import 'package:e_commerce/models/colors.dart';
import 'package:e_commerce/models/details/components/product_WithImg.dart';
import 'package:e_commerce/models/details/utilities/colorAnd_size.dart';
import 'package:e_commerce/models/details/utilities/description.dart';
import 'package:e_commerce/models/utilities/product.dart';
import 'package:flutter/material.dart';


class MyBodyPage extends StatelessWidget {
  final Product product;
  const MyBodyPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    // overal size
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    top: size.height * 0.3,
                  ),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultpadding,
                    right: kDefaultpadding,
                  ),
                  height: 500,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      Description(product: product),
                     const CartCounter(),
                    ],
                  ),
                ),
                ProductTitlewithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numberofItems=1;
  @override
  Widget build(BuildContext context) {
    return const Row(
      children:<Widget> [
        SizedBox(
          width: 40,
          height: 32,
          
          child: Center(child:  Icon(Icons.remove,)),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: kDefaultpadding / 4, right: kDefaultpadding / 2),
      padding: const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? color : Colors.transparent,
          )),
      child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
    );
  }
}
