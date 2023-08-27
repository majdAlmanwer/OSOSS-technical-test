import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ososs_test/screens/page_2/widget/pokemons_card.dart';
import 'package:ososs_test/utils/app_config.dart';

class PageTwoBody extends StatefulWidget {
  const PageTwoBody({super.key});

  @override
  State<PageTwoBody> createState() => _PageTwoBodyState();
}

class _PageTwoBodyState extends State<PageTwoBody> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      margin: EdgeInsets.all(5),
      height: getPercentScreenHeight(100),
      width: getPercentScreenWidth(95),
      child: PokemonsCard(),
    );
  }
}
