import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:teste_dart_digital/app/modules/home/home_bindings.dart';
import 'package:teste_dart_digital/app/modules/home/home_page.dart';
import 'package:teste_dart_digital/app/modules/login/login_page.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding()),
    GetPage(
      name: Routes.HOME,
      page: () => LoginPage(),
    ),
  ];
}
