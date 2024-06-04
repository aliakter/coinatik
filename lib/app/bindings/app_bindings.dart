import 'package:coinatik/app/modules/forget_password/controller/forget_password_controller.dart';
import 'package:coinatik/app/modules/pin_auth/controller/pin_auth_controller.dart';
import 'package:coinatik/app/modules/signin/controller/signin_controller.dart';
import 'package:coinatik/app/modules/signup/controller/signup_controller.dart';
import 'package:coinatik/app/modules/splash/controller/splash_controller.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(SplashController());
    Get.lazyPut(() => ForgetPasswordController());
    Get.lazyPut(() => PinAuthController());
    Get.lazyPut(() => SigninController());
    Get.lazyPut(() => SignupController());
  }
}
