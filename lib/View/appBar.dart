import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../constants.dart';

AppBar appBar({Color? color}) {
  return AppBar(
    backgroundColor: color,
    elevation: 0,
    leading: IconButton(
      onPressed: () => Get.back(),
      icon: SvgPicture.asset(
        'assets/icons/back.svg',
        color: color == Colors.white ? kTextColor : Colors.white,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/search.svg',
            color: color == Colors.white ? kTextColor : Colors.white),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/cart.svg',
            color: color == Colors.white ? kTextColor : Colors.white),
      ),
      const SizedBox(width: 10)
    ],
  );
}
