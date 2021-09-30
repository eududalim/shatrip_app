import 'package:get/get.dart';
import 'package:shatrip/app/core/routes/app_routes.dart';
import 'package:shatrip/app/home/ui/pages/home_page.dart';
import 'package:shatrip/app/login/ui/pages/first_page.dart';
import 'package:shatrip/app/login/ui/pages/login_page.dart';
import 'package:shatrip/app/login/ui/pages/sign_up_page.dart';

abstract class AppPages {
  static final routes = [
    GetPage(name: Routes.INITIAL, page: () => FirstPage()),
    GetPage(name: Routes.LOGIN, page: () => LoginPage()),
    GetPage(name: Routes.SIGNUP, page: () => SignUpPage()),
    GetPage(name: Routes.HOME, page: () => HomePage()),
  ];
}
