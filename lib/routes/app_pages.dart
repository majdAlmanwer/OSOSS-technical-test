import 'package:get/get.dart';
import 'package:ososs_test/routes/routes.dart';
import 'package:ososs_test/screens/page_1/page_one.dart';
import 'package:ososs_test/screens/page_2/page_two.dart';

import '../screens/home/home_page.dart';
import '../screens/splash_screen.dart';

final pages = <GetPage>[
  GetPage(name: AppRoutes.splashscreen, page: () => const SplashScreen()),
  GetPage(name: AppRoutes.homepage, page: () => const HomePage()),
  GetPage(name: AppRoutes.pageone, page: () => const PageOne()),
  GetPage(name: AppRoutes.pagetwo, page: () => const PageTwo())
];
