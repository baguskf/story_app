import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:story_app/app/modules/home_list/views/home_list_view.dart';
import 'package:story_app/app/modules/profil/views/profil_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      Center(
        child: HomeListView(),
      ),
      Center(
        child: Text('Add'),
      ),
      Center(
        child: ProfilView(),
      ),
    ];

    return Scaffold(
      body: Obx(() => widgets[controller.currentIndex.value]),
      bottomNavigationBar: ConvexAppBar(
        height: 60,
        cornerRadius: 20,
        backgroundColor: const Color.fromARGB(255, 0, 18, 151),
        gradient: LinearGradient(colors: [
          const Color.fromARGB(255, 103, 0, 147),
          const Color.fromARGB(255, 0, 18, 151),
        ]),
        color: Colors.white,
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        initialActiveIndex: 1,
        onTap: (int i) => controller.currentIndex.value = i,
      ),
    );
  }
}
