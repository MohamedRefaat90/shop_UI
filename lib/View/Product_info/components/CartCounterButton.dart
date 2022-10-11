import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/myController.dart';

class CartCounterButtons extends StatelessWidget {
  CartCounterButtons({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);
  final IconData icon;
  final Function press;
  MyController controllerx = Get.find();
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => press(),
      shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(0),
      minWidth: 50,
      child: Icon(icon),
    );
  }
}
