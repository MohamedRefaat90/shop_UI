import 'package:flutter/material.dart';

import '../../../Model/product.dart';
import '../../../constants.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kPadding),
      child: Text(product.description, style: const TextStyle(height: 1.5)),
    );
  }
}
