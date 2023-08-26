import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_config.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton(
      {super.key,
      required this.onTap,
      required this.title,
      required this.color});

  Function() onTap;
  String title;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        width: getPercentScreenWidth(88),
        height: getPercentScreenHeight(6),
        // color: SPrimaryColor,
        child: TextButton(
          onPressed: onTap,
          child: Text(
            textAlign: TextAlign.center,
            title.tr,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
        ));
  }
}
