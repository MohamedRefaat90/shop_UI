import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Model/product.dart';
import '../../Product_info/Product_infoScreen.dart';
import 'itemCard.dart';

class Products extends StatelessWidget {
  const Products({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: .75),
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () =>
                    Get.to(ProductInfoScreen(product: products[index])),
                child: ItemCard(product: products[index]),
              )),
    );
  }
}
