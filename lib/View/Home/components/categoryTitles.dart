import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/myController.dart';
import '../../../constants.dart';

List<String> categoryTitleList = [
  'Hand Bag',
  'Jewellery',
  'Footwear',
  'Dresses'
];
MyController controller = Get.find();

SizedBox CategoryTitles() {
  return SizedBox(
    height: 30,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryTitleList.length,
        itemBuilder: (BuildContext context, int index) => categoryTitle(index)),
  );
}

Widget categoryTitle(int index) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: kPadding),
    child: GetX<MyController>(
      builder: ((controller) => GestureDetector(
            onTap: (() => controller.changeIndex(index)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categoryTitleList[index],
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: controller.selectedindex.value == index
                          ? kTextColor
                          : kTextLightColor),
                ),
                Container(
                  height: 3,
                  width: 25,
                  color: controller.selectedindex.value == index
                      ? kTextColor
                      : Colors.transparent,
                  margin: const EdgeInsets.only(top: kPadding / 4),
                )
              ],
            ),
          )),
    ));
