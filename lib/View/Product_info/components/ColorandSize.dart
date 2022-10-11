import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/View/Product_info/components/ColorDots.dart';

import '../../../Controller/myController.dart';
import '../../../Model/product.dart';
import '../../../Model/productColor.dart';

class ColorandSize extends StatelessWidget {
  ColorandSize({
    Key? key,
    required this.productSize,
  }) : super(key: key);

  final Product productSize;
  MyController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Colors',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(
                height: 30,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) => InkWell(
                        onTap: () => controller.changeSelectedColorDot(index),
                        child: GetBuilder<MyController>(
                          builder: (controller) =>
                              ColorDOTS(selected: colorsList[index]),
                        ))))
          ]),
        ),
        Expanded(
            child: RichText(
                text: TextSpan(children: [
          TextSpan(
              text: 'Size\n',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold)),
          TextSpan(
              text: '${productSize.size} cm',
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18))
        ])))
      ],
    );
  }
}
