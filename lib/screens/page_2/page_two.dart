import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ososs_test/widgets/custom_app_bar.dart';

import 'Page_two_body.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(
        title: 'Pokemons',
        backArrowWidget: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: PageTwoBody(),
    ));
  }
}
