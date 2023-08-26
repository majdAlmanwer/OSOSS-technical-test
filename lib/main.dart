import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ososs_test/routes/app_pages.dart';
import 'package:ososs_test/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashscreen,
      getPages: pages,
      title: 'ososs Test',
      locale: const Locale('en'),
      fallbackLocale: const Locale('en'),
      theme: ThemeData(),
    );
  }
}
