import 'package:flutter/material.dart';
import 'package:shop/View/Home/components/body.dart';

import '../appBar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(color: Colors.white),
      body: Body(),
    );
  }
}
