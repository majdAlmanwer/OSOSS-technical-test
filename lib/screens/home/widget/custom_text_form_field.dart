import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ososs_test/controller/get_storage_controller.dart';
import 'package:ososs_test/utils/app_config.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({super.key, required this.controller});
  TextEditingController controller = TextEditingController();
  final getStorageController = Get.put(GetStorageController());
  GetStorage box = GetStorage();
  final name = ''.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: getPercentScreenHeight(5), bottom: getPercentScreenHeight(5)),
      width: getPercentScreenWidth(90),
      child: TextFormField(
        decoration: const InputDecoration(
          hintText: 'Enter your name',
          hintStyle: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        controller: controller,
        onChanged: (value) {
          value = controller.text;
          getStorageController.updateUserName(value);
        },
      ),
    );
  }
}
