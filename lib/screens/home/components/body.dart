import 'package:e_commerce/screens/home/components/banner.dart';
import 'package:e_commerce/screens/home/components/categories.dart';
import 'package:e_commerce/screens/home/components/home_header.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            child: Column(
      children: [
        SizedBox(height: getProportionateScreenWidth(20)),
        HomeHeader(),
        SizedBox(height: getProportionateScreenWidth(30)),
        TopBanner(),
        SizedBox(height: getProportionateScreenWidth(30)),
        Categories()
      ],
    )));
  }
}
