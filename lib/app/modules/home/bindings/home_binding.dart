import 'package:get/get.dart';
import 'package:story_app/app/modules/profil/controllers/profil_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<ProfilController>(
      () => ProfilController(),
    );
  }
}
