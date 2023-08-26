import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ososs_test/controller/animated_controller.dart';
import 'package:ososs_test/utils/app_color.dart';
import 'package:ososs_test/utils/app_config.dart';

import '../../controller/get_storage_controller.dart';

class PageOneBody extends StatefulWidget {
  const PageOneBody({super.key});

  @override
  State<PageOneBody> createState() => _PageOneBodyState();
}

class _PageOneBodyState extends State<PageOneBody> {
  final getStorageController = Get.put(GetStorageController());
  final animateController = Get.put(AnimateController());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getPercentScreenHeight(100),
      width: getPercentScreenWidth(100),
      child: Column(
        children: [
          Obx(
            () => Container(
              padding: EdgeInsets.only(
                  top: getPercentScreenHeight(5),
                  bottom: getPercentScreenHeight(10)),
              alignment: Alignment.topCenter,
              child: Text(
                getStorageController.userName.value,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          // Spacer(),
          GetBuilder<AnimateController>(
              builder: (_) => AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    width: getPercentScreenWidth(70),
                    height: getPercentScreenHeight(35),
                    decoration: BoxDecoration(
                      color: _.color.value,
                      borderRadius: _.borderRadius.value,
                    ),
                  )),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: getPercentScreenHeight(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    animateController.animateContainer(
                        indigoBlue, BorderRadius.circular(0));
                    print('taped');
                  },
                  child: _container(
                    color: indigoBlue,
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                InkWell(
                  onTap: () {
                    animateController.animateContainer(
                        blueColor, BorderRadius.circular(50));
                    print('taped');
                  },
                  child: _container(
                    color: blueColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                InkWell(
                  onTap: () {
                    animateController.animateContainer(
                        redAccent, BorderRadius.circular(150));
                    print('taped');
                  },
                  child: _container(
                    color: redAccent,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _container extends StatelessWidget {
  _container({super.key, required this.color, required this.borderRadius});
  Color color;
  BorderRadiusGeometry borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getPercentScreenHeight(8),
      width: getPercentScreenWidth(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius,
      ),
    );
  }
}
