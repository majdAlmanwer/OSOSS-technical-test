import 'package:flutter/material.dart';
import 'package:ososs_test/utils/app_color.dart';
import 'package:ososs_test/utils/app_config.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.backArrowWidget, required this.title});
  final Widget? backArrowWidget;
  final String title;
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(getPercentScreenHeight(8));

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: blueColor,
      elevation: 0.0,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: backArrowWidget,
      ),
      leadingWidth: getPercentScreenWidth(5),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.normal),
      ),
    );
  }
}
