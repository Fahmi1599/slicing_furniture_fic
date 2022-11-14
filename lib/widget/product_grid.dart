import 'package:flutter/material.dart';
import 'package:practice1_fluuter/model/provider_products.dart';
import 'package:practice1_fluuter/widget/product_item.dart';
import 'package:provider/provider.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<ProductProvider>(context);
    final allproduct = productData.products;

    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 4,
        itemBuilder: (context,i) => ProductItem(
            allproduct[i].id,
            allproduct[i].title,
            allproduct[i].imageUrl)
    );
  }
}
