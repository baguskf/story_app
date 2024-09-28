import 'package:get/get.dart';

class RegisterController extends GetxController {
  var isObscure = true.obs;
  var isConfirmObscure = true.obs;

  void showPassword() {
    isObscure.value = !isObscure.value;
  }

  void showCPassword() {
    isConfirmObscure.value = !isConfirmObscure.value;
  }
}
