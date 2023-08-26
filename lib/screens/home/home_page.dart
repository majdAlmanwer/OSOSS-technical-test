import 'package:flutter/material.dart';
import 'package:ososs_test/widgets/custom_app_bar.dart';

import 'home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const CustomAppBar(
        title: 'Home',
      ),
      body: HomeBody(),
    ));
  }
}
