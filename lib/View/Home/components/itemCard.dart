import 'package:flutter/material.dart';

import '../../../Model/product.dart';
import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: kPadding),
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16)),
              child:
                  Hero(tag: '${product.id}', child: Image.asset(product.image)),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kPadding / 2),
                child: Text(
                  product.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: kTextLightColor),
                ),
              ),
              Text(
                "\$${product.price}",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: kTextColor),
              )
            ],
          ),
        ],
      ),
    );
  }
}
