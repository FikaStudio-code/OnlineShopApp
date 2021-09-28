import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key? key, required this.text, required this.press})
      : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 5),
          onPressed: () {
            press();
          },
          child: Text(
            text,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(18), color: Colors.white),
          )),
    );
  }
}
