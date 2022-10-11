import 'package:flutter/material.dart';
import 'package:shop/Model/product.dart';

import '../../../Controller/myController.dart';
import 'CartCounter.dart';
import 'FavButton.dart';

class CartCounterandFavButton extends StatelessWidget {
  const CartCounterandFavButton({
    Key? key,
    required this.controller,
    required this.product,
  }) : super(key: key);

  final MyController controller;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(controllerx: controller),
        FavButton(controller: controller, product: product)
      ],
    );
  }
}
