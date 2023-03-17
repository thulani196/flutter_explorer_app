import 'package:get/get.dart';

import '../features/authentication/login_page.dart';
import '../features/details/details_page.dart';
import '../features/home/home_page.dart';

appRoutes() => [
      GetPage(
        name: '/',
        page: () => const LoginPage(),
        transition: Transition.zoom,
        transitionDuration: const Duration(milliseconds: 300),
      ),
      GetPage(
        name: '/home',
        page: () => const HomePage(),
        transition: Transition.zoom,
        transitionDuration: const Duration(milliseconds: 300),
      ),
      GetPage(
        name: '/details',
        page: () => DetailsPage(),
        transition: Transition.zoom,
        transitionDuration: const Duration(milliseconds: 300),
      ),
    ];
