import 'package:flutter/material.dart';
import 'package:shop/Model/product.dart';
import 'package:shop/View/Product_info/components/Body.dart';

import '../appBar.dart';

class ProductInfoScreen extends StatelessWidget {
  const ProductInfoScreen({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(color: product.color),
      backgroundColor: product.color,
      body: Body(product: product),
    );
  }
}
