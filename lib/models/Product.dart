import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "office Code",
    price: 234,
    size: 12,
    description: "the first item",
    image: "assets/images/bag_1.png",
    color: Color(0XFF3D82AE),
  ),
  Product(
    id: 2,
    title: "office Code",
    price: 234,
    size: 12,
    description: "the second item",
    image: "assets/images/bag_2.png",
    color: Colors.brown,
  ),
  Product(
    id: 3,
    title: "office Code",
    price: 234,
    size: 12,
    description: "the thired item",
    image: "assets/images/bag_3.png",
    color: Color.fromARGB(255, 28, 24, 24),
  ),
  Product(
    id: 4,
    title: "office Code",
    price: 234,
    size: 12,
    description: "the fourth item",
    image: "assets/images/bag_4.png",
    color: Colors.orange,
  ),
  Product(
    id: 5,
    title: "office Code",
    price: 234,
    size: 12,
    description: "the five item",
    image: "assets/images/bag_5.png",
    color: Colors.pink,
  ),
    Product(
    id: 6,
    title: "office Code",
    price: 234,
    size: 12,
    description: "the sixth item",
    image: "assets/images/bag_6.png",
    color: Colors.black,
  ),
];
