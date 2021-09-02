import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shatrip/app/login/ui/pages/login_page.dart';
import 'package:shatrip/app/login/ui/pages/sign_up_page.dart';

class FirstController extends GetxController {

 get goToLoginPage => Get.to(() => LoginPage());

 get goToSignUpPage => Get.to(() => SignUpPage());



}