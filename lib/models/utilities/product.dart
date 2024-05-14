import 'package:flutter/material.dart';


class Product{
  final String image, title, description;
  final Color color;
  final int size, price, id;

  Product({
    required this.image,
    required this.title,
    required this.size,
    required this.price,
    required this.description,
    required this.color,
    required this.id, 
    });
}
List<Product>product=[
Product(
  image:"lib/images/image1.jpg",
  title: 'Crocks-500',
  size: 12,
  price: 1243,
  description: 'For now, DhiWise only supports Figma designs For the designs ',

  color: const Color.fromARGB(255, 196, 46, 0), 
  id: 1
  ),
Product(
  image: 'lib/images/image2.jpg',
  title: 'AirForce',
  size: 10,
  price: 2500 ,
  description: 'For now, DhiWise only supports Figma designs ',
  color:const Color.fromARGB(255, 202, 155, 84) , 
  id: 2
  ),
Product(
  image: 'lib/images/image3.jpg',
  title: 'clacks',
  size: 9,
  price: 4500,
  description: 'For now, DhiWise only supports Figma ',
  color: const Color.fromARGB(255, 74, 71, 71), 
  id: 3,
  ),
Product(
  image: 'lib/images/image4.jpg',
  title: 'heels',
  size: 6,
  price: 1700,
  description: 'For now, DhiWise only supports Figma ',
  color: const Color.fromARGB(255, 255, 211, 101), 
  id: 4
  ),
Product(
  image: 'lib/images/image5.jpg',
  title: 'AirForce1',
  size: 9,
  price: 2000,
  description: 'For now, DhiWise only supports Figma ',
  color: Colors.white60, 
  id: 5
  ),
Product(
  image: 'lib/images/image6.jpg',
  title: 'Nike-sports',
  size: 11,
  price: 1500,
  description: 'For now, DhiWise only supports Figma ',
  color: const Color.fromARGB(255, 75, 87, 76), 
  id: 6
  ),
Product(
  image: 'lib/images/image7.jpg',
  title: 'Nike-sorts',
  size: 8,
  price: 1500,
  description: 'For now, DhiWise only supports Figma ',
  color: Colors.red, 
  id: 7
  ),
Product(
  image: 'lib/images/image5.jpg',
  title: 'Nike-spors',
  size: 7,
  price: 1400,
  description: 'For now, DhiWise only supports Figma ',
  color:  Colors.red, 
  id: 8
  ),
Product(
  image: 'lib/images/image6.jpg',
  title: 'Nike-sport',
  size: 6,
  price: 1500,
  description: 'For now, DhiWise only supports Figma ',
  color: const Color.fromARGB(255, 75, 87, 76), 
  id: 9
  ),
Product(
  image: 'lib/images/image2.jpg',
  title: 'Nike-spots',
  size: 10,
  price: 1500,
  description: 'For now, DhiWise only supports Figma ',
  color: const  Color.fromARGB(255, 202, 155, 84), 
  id: 10
  ),




];