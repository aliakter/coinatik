import 'package:get/get.dart';

class SplashController extends GetxController {
  final RxBool isSignUpButtonSelected = true.obs;

  void toggleSignUpButton() {
    isSignUpButtonSelected.value = !isSignUpButtonSelected.value;
  }
}
