import 'package:flutter/material.dart';
import 'package:mohamed/Models/ProductModel.dart';

class DummyData {
  static List<Product> productList = [
    Product(
        id: 0,
        title: 'FIRST',
        backgroundColor: Colors.white,
        progressColor: Colors.lightGreen),
    Product(
        id: 1,
        title: 'SECOND',
        backgroundColor: Colors.white,
        progressColor: Colors.red),
    Product(
        id: 2,
        title: 'THIRD',
        backgroundColor: Colors.white,
        progressColor: Colors.pink)
  ];
}
