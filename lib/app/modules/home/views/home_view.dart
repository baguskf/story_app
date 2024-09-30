import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:story_app/app/modules/home_list/views/home_list_view.dart';
import 'package:story_app/app/modules/profil/views/profil_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      HomeListView(),
      Center(
        child: Text('Add'),
      ),
      ProfilView(),
    ];

    return Scaffold(
      body: Obx(() => widgets[controller.currentIndex.value]),
      bottomNavigationBar: ConvexAppBar(
        color: Colors.white,
        height: 60,
        style: TabStyle.reactCircle,
        backgroundColor: const Color.fromARGB(255, 0, 18, 151),
        gradient: LinearGradient(colors: [
          const Color.fromARGB(255, 103, 0, 147),
          const Color.fromARGB(255, 0, 18, 151),
        ]),
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.camera_alt_outlined, title: 'Camera'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        initialActiveIndex: 0,
        onTap: (int i) {
          controller.currentIndex.value = i;
        },
      ),
    );
  }
}
