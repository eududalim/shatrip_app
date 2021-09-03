import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shatrip/app/login/ui/pages/login_page.dart';
import 'package:shatrip/app/login/ui/pages/sign_up_page.dart';

class FirstController extends GetxController {
  goToLoginPage() => Get.to(() => LoginPage());

  goToSignUpPage() => Get.to(() => SignUpPage());
}
