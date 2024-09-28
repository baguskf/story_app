import 'package:get/get.dart';

class LoginPageController extends GetxController {
  var isObscure = true.obs;

  void showPassword() {
    isObscure.value = !isObscure.value;
  }
}
