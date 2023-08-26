import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ososs_test/screens/page_1/page_one_body.dart';
import 'package:ososs_test/widgets/custom_app_bar.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(
        title: 'Animations',
        backArrowWidget: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: PageOneBody(),
    ));
  }
}
