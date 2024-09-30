import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      themeMode: ThemeMode.light,
      title: "Story App",
      initialRoute: Routes.ONBOARDING,
      getPages: AppPages.routes,
    ),
  );
}
