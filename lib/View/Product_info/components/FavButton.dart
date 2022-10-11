import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shop/Model/product.dart';

import '../../../Controller/myController.dart';
import '../../../constants.dart';

class FavButton extends StatelessWidget {
  const FavButton({
    Key? key,
    required this.controller,
    required this.product,
  }) : super(key: key);

  final MyController controller;
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: InkWell(
        onTap: () => controller.favourit(),
        child: GetBuilder<MyController>(
          builder: (controller) => Container(
            width: 42,
            height: 42,
            padding: const EdgeInsets.all(kPadding / 2),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: product.color),
            child: SvgPicture.asset(
              'assets/icons/heart.svg',
              color: controller.isFav
                  ? const Color.fromARGB(255, 255, 17, 0)
                  : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
