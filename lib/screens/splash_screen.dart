import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ososs_test/routes/routes.dart';

import '../utils/app_config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 3);

    return Timer(duration, (() => Get.offNamed(AppRoutes.homepage)));
  }

  @override
  dispose() {
    startTime();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      width: getPercentScreenWidth(10),
      height: getPercentScreenHeight(10),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Center(
        child: Container(
          width: getPercentScreenWidth(60),
          height: getPercentScreenHeight(50),
          decoration: const BoxDecoration(),
          child: const FlutterLogo(),
        ),
      ),
    );
  }
}
