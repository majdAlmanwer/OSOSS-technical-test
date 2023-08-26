import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ososs_test/routes/routes.dart';
import 'package:ososs_test/screens/home/widget/custom_text_form_field.dart';
import 'package:ososs_test/utils/app_color.dart';
import 'package:ososs_test/utils/app_config.dart';
import 'package:ososs_test/widgets/custom_text_button.dart';

import '../../controller/get_storage_controller.dart';

class HomeBody extends StatefulWidget {
  HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  TextEditingController nameController = TextEditingController();
  final getStorageController = Get.put(GetStorageController());

  GetStorage box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getPercentScreenHeight(100),
      width: getPercentScreenWidth(100),
      child: Column(children: [
        CustomTextFormField(
          controller: nameController,
        ),
        Obx(
          () => Text(
            getStorageController.userName.value,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
        ),
        const Spacer(),
        GetBuilder<GetStorageController>(
          builder: (controller) => TextButton(
            onPressed: () {
              controller.deleteUserName();

              nameController.clear();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.delete,
                  color: redColor,
                  size: getPercentScreenWidth(6),
                ),
                SizedBox(
                  width: getPercentScreenWidth(1),
                ),
                const Text(
                  'Clear text',
                  style: TextStyle(
                    color: redColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        CustomTextButton(
            onTap: () {
              Get.toNamed(AppRoutes.pageone);
            },
            title: 'Go to page 1',
            color: indigoBlue),
        SizedBox(
          height: getPercentScreenHeight(2),
        ),
        CustomTextButton(onTap: () {}, title: 'Go to page 2', color: blueColor)
            .paddingOnly(bottom: getPercentScreenHeight(3)),
      ]),
    );
  }
}
