import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetStorageController extends GetxController {
  final box = GetStorage();
  final userName = 'Your Name'.obs;

  void updateUserName(String newText) {
    userName.value = newText;
    box.write('UserName', newText);
  }

  void deleteUserName() {
    box.remove('UserName');
    userName.value = box.read('UserName') ?? 'Your Name';
    print('deleteeeeeeeeeeeee UserName');
    update();
  }
}
