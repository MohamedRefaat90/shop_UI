import 'package:flutter/material.dart';

class SelectedProductColor {
  Color color;
  bool isSelected;
  SelectedProductColor({
    required this.color,
    required this.isSelected,
  });
}

List<SelectedProductColor> colorsList = [
  SelectedProductColor(color: const Color(0xFF3D82AE), isSelected: false),
  SelectedProductColor(color: const Color(0xFFD3A984), isSelected: false),
  SelectedProductColor(color: const Color(0xFFFB7883), isSelected: false)
];
