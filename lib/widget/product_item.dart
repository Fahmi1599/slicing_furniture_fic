import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget{
  final String id;
  final String title;
  final String imageUrl;


  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: GridTile(
        child: GestureDetector(
          onTap: (){
            // Navigator.pushReplacement(context,
            //     MaterialPageRoute(builder:
            //         (context) =>
            //         ProductDetail())
            // );
          },
          child: Image.network(imageUrl,fit: BoxFit.cover),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black26,
          leading: IconButton(
            icon: Icon(Icons.favorite_border_outlined),
            color: Theme.of(context).colorScheme.secondary,
            onPressed: () {  },
          ),
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }

}