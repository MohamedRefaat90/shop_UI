import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:shop/Controller/myController.dart';
import 'package:shop/View/Product_info/components/ColorandSize.dart';
import 'package:shop/constants.dart';

import '../../../Model/product.dart';
import '../../../Model/productColor.dart';
import '../../Home/components/categoryTitles.dart';
import 'CartButtonandBuyNow.dart';
import 'CartCounter.dart';
import 'CartCounterandFavButton.dart';
import 'FavButton.dart';
import 'ProductDescription.dart';
import 'Product_Title_With_Image.dart';

class Body extends StatelessWidget {
  Body({super.key, required this.product});

  final Product product;
  MyController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: const EdgeInsets.only(
                      left: kPadding, top: kPadding * 6.5),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26),
                        topRight: Radius.circular(26),
                      )),
                  child: Column(
                    children: [
                      ColorandSize(productSize: product),
                      ProductDescription(product: product),
                      CartCounterandFavButton(
                          controller: controller, product: product),
                      const SizedBox(height: kPadding * 2.5),
                      CartButtonandBuyNow(product: product)
                    ],
                  ),
                ),
                Product_Title_With_Image(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
