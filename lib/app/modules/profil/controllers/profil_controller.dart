import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilController extends GetxController {
  var isDarkMode = false.obs;

  @override
  void onInit() {
    loadDarkModePreference();
    super.onInit();
  }

  Future<void> loadDarkModePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isDarkMode.value = prefs.getBool('isDarkMode') ?? false; // Default to false
    if (isDarkMode.value) {
      Get.changeTheme(ThemeData.dark());
    } else {
      Get.changeTheme(ThemeData.light());
    }
  }

  void toggleDarkMode(bool isDark) {
    isDarkMode.value = isDark;
    saveDarkModePreference(isDark);

    if (isDark) {
      Get.changeTheme(ThemeData.dark());
    } else {
      Get.changeTheme(ThemeData.light());
    }
  }

  Future<void> saveDarkModePreference(bool isDark) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', isDark);
  }
}
