import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_app/app/routes/app_pages.dart';

class OnboardingController extends GetxController {
  var currentPage = 0.obs;
  PageController pageController = PageController();

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  void nextPage() {
    if (currentPage.value < 2) {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    } else {
      Get.offNamed(Routes.LOGIN_PAGE);
    }
  }
}
