import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/myController.dart';
import '../../../constants.dart';
import 'CartCounterButton.dart';

class CartCounter extends StatelessWidget {
  const CartCounter({
    Key? key,
    required this.controllerx,
  }) : super(key: key);

  final MyController controllerx;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CartCounterButtons(
          icon: Icons.remove,
          press: () {
            controllerx.decreaseCartCounter();
          },
        ),
        GetBuilder<MyController>(builder: (controller) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding / 2),
            child: Text(
                '${controller.numOfItems}'
                    .padLeft(2, '0'),
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold)),
          );
        }),
        CartCounterButtons(
          icon: Icons.add,
          press: () {
            controllerx.increaseCartCounter();
            
          },
        ),
      ],
    );
  }
}
