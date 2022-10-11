import 'package:flutter/material.dart';

import 'package:shop/View/Home/components/products.dart';
import 'package:shop/constants.dart';

import 'categoryTitles.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kPadding, vertical: kPadding),
        child: Text(
          "Women",
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(fontWeight: FontWeight.bold, color: kTextColor),
        ),
      ),
      CategoryTitles(),
      const Products()
    ]);
  }
}
