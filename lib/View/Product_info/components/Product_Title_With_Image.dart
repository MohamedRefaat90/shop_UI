import 'package:flutter/material.dart';

import '../../../Model/product.dart';
import '../../../constants.dart';
import '../../Home/components/categoryTitles.dart';

class Product_Title_With_Image extends StatelessWidget {
  const Product_Title_With_Image({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Aristocratic ${categoryTitleList[0]}', // Hand Bag
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w500)),
          Text(product.title,
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
          const SizedBox(height: kPadding),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(children: [
                  const TextSpan(text: 'Price\n'),
                  TextSpan(
                      text: '\$${product.price}',
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold))
                ]),
              ),
              const SizedBox(width: kPadding * 2),
              Expanded(
                  child: Hero(
                tag: '${product.id}',
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fill,
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
