import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFd1d1d1),
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/images/product_0.png",
    title: "Notebook Compac",
    price: 4999,
  ),
  Product(
    image: "assets/images/product_1.png",
    title: "Fone Jbl Bluetooth",
    price: 220,
  ),
  Product(
    image: "assets/images/product_2.jpg",
    title: "Smart tv led 55 LG",
    price: 4982,
  ),
  Product(
    image: "assets/images/product_3.png",
    title: "Iphone 13 256gb Branco",
    price: 6789,
  ),
];
