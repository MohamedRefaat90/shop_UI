import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shop/Controller/myBindings.dart';
import 'package:shop/constants.dart';
import 'View/Home/HomeScreen.dart';

void main()  {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Online Shop',
      initialBinding: MyBindings(),
      theme: ThemeData(
          primaryColor: Colors.blue,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor)),
      debugShowCheckedModeBanner: false,
      home: const Home(),
      getPages: [],
    );
  }
}
