import 'package:get/get.dart';
import 'package:ososs_test/routes/routes.dart';

import '../screens/home/home_page.dart';
import '../screens/splash_screen.dart';

final pages = <GetPage>[
  GetPage(name: AppRoutes.splashscreen, page: () => const SplashScreen()),
  GetPage(name: AppRoutes.homepage, page: () => const HomePage()),
];
