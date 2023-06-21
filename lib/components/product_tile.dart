import 'package:bloc_counter/home/model/home_prod_data.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.teal)),
          height: 200,
          width: double.maxFinite,
          child: Image.network(
            productModel.imageUrl,
            fit: BoxFit.contain,
          ),
        ),
        Text(
          productModel.name,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(productModel.description),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('price : ${productModel.price}'),
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.favorite_border)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_bag_outlined))
              ],
            )
          ],
        )
      ]),
    );
  }
}
