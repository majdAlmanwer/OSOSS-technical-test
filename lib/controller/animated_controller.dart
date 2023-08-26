import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ososs_test/utils/app_color.dart';

class AnimateController extends GetxController {
  Rx<Color> color = Rx<Color>(indigoBlue);
  Rx<BorderRadiusGeometry> borderRadius = Rx<BorderRadiusGeometry>(
    BorderRadius.circular(0.0),
  );

  void animateContainer(Color newColor, BorderRadiusGeometry newBorderRadius) {
    color.value = newColor;
    borderRadius.value = newBorderRadius;
    update();
  }
}
