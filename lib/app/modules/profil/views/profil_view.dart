import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'package:get/get.dart';

import 'package:story_app/app/routes/app_pages.dart';

import '../controllers/profil_controller.dart';

class ProfilView extends GetView<ProfilController> {
  ProfilView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Keluar',
                    style: TextStyle(fontFamily: 'myfont', fontSize: 15),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  IconButton(
                    onPressed: () => Get.offAllNamed(Routes.LOGIN_PAGE),
                    icon: Icon(Icons.logout_outlined),
                  ),
                ],
              ),
              Center(
                child: Icon(
                  Icons.people,
                  size: 100,
                ),
              ),
              Text(
                'Profil',
                style: TextStyle(
                  fontFamily: 'myfont',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Obx(
                () => Divider(
                  color:
                      controller.isDarkMode.value ? Colors.white : Colors.black,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      'Nama',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      'Bagus',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      'Email',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Text(
                      'baguskaruniaf@gmail.com',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Setting',
                style: TextStyle(
                  fontFamily: 'myfont',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Obx(
                () => Divider(
                  color:
                      controller.isDarkMode.value ? Colors.white : Colors.black,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mode Gelap',
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 20,
                    ),
                  ),
                  Obx(
                    () => FlutterSwitch(
                      width: 70.0, // Ubah lebar untuk memberi ruang pada teks
                      height: 35.0, // Ubah tinggi untuk memberi ruang pada teks
                      valueFontSize: 16.0, // Ukuran font untuk teks
                      toggleSize: 30.0, // Ukuran toggle
                      value: controller.isDarkMode.value,
                      showOnOff: true,

                      borderRadius: 30.0,
                      onToggle: (bool isDark) {
                        controller.toggleDarkMode(isDark);
                      },
                      padding: 5.0, // Padding di dalam switch
                      // Warna saat tidak aktif
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
