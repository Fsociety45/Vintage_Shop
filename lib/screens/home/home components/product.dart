import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Mobile",
      price: 234,
      size: 12,
      description: dummyText,
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Laptop",
      price: 234,
      size: 8,
      description: dummyText,
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "TV",
      price: 234,
      size: 10,
      description: dummyText,
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Bike",
      price: 234,
      size: 11,
      description: dummyText,
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Car",
      price: 234,
      size: 12,
      description: dummyText,
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Bed",
    price: 234,
    size: 12,
    description: dummyText,
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText = "abcdefg";
