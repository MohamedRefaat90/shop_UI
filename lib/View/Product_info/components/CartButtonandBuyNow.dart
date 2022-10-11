import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Model/product.dart';
import '../../../constants.dart';

class CartButtonandBuyNow extends StatelessWidget {
  const CartButtonandBuyNow({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 58,
          height: 50,
          margin: const EdgeInsets.only(right: kPadding * 2),
          decoration: BoxDecoration(
              border: Border.all(color: product.color),
              borderRadius: BorderRadius.circular(18)),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
              color: product.color,
            ),
          ),
        ),
        Expanded(
            child: Container(
              margin: const EdgeInsets.only(right: kPadding),
              child: MaterialButton(
          onPressed: () {},
          height: 58,
          color: product.color,
          shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Text(
              'Buy Now'.toUpperCase(),
              style: const TextStyle(
                  color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
            ))
      ],
    );
  }
}
