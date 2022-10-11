import 'package:flutter/material.dart';
import 'package:shop/Model/productColor.dart';

import '../../../constants.dart';

class ColorDOTS extends StatelessWidget {
  ColorDOTS({
    Key? key,
    required this.selected,
  }) : super(key: key);

  final SelectedProductColor selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      padding: const EdgeInsets.all(2.5),
      margin: const EdgeInsets.only(right: kPadding / 6),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 2,
            color: selected.isSelected == true
                ? const Color(0xFF356c95)
                : Colors.transparent,
          )),
      child: DecoratedBox(
          decoration:
              BoxDecoration(color: selected.color, shape: BoxShape.circle)),
    );
  }
}
