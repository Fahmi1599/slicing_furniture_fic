
import 'package:flutter/cupertino.dart';
import 'package:practice1_fluuter/model/product.dart';

class ProductProvider with ChangeNotifier{

  List<Product> products =
  [
    Product(
        id: "1",
        title: "Stylish Chair",
        description: "Stylish Chair",
        price: 170,
        imageUrl: "assets/images/list_product_image_1",
        rating: 4.8),
    Product(
        id: "2",
        title: "Modern Table",
        description: "Modern Table",
        price: 75,
        imageUrl: "assets/images/list_product_image_2",
        rating: 4.9),
    Product(
        id: "1",
        title: "Wooden Console",
        description: "Wooden Console",
        price: 240,
        imageUrl: "assets/images/list_product_image_3",
        rating: 4.7),
    Product(
        id: "1",
        title: "Brown Armchair",
        description: "Brown Armchair",
        price: 210,
        imageUrl: "assets/images/list_product_image_4",
        rating: 4.9),
  ];


}