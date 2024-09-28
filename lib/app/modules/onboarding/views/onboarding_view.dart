import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:story_app/app/routes/app_pages.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  final OnboardingController controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.onPageChanged,
            children: [
              buildOnboardingPage(
                image: 'assets/images/onboarding1.png',
                title: 'Bagikan Cerita Harimu!',
                description:
                    '" Setiap cerita memiliki kekuatan. Bagikan pengalamanmu dan biarkan dunia terinspirasi. "',
              ),
              buildOnboardingPage(
                image: 'assets/images/onboarding2.jpg',
                title: 'Temukan Cerita Baru',
                description:
                    '" Jelajahi kisah menarik dari berbagai orang dan pengalaman. "',
              ),
              buildOnboardingPage(
                image: 'assets/images/onboarding3.jpg',
                title: 'Cerita Dimulai di Sini',
                description:
                    '" Tulis, bagikan, dan terhubung. Mulailah perjalanan berbagi kisahmu dengan dunia sekarang. "',
              ),
            ],
          ),
          Positioned(
            top: 0,
            right: 10,
            child: SafeArea(
              child: TextButton(
                onPressed: () => Get.offNamed(Routes.LOGIN_PAGE),
                child: Row(
                  children: [
                    Text(
                      'Skip',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Icon(
                      Icons.navigate_next_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Obx(
                  () {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            width:
                                controller.currentPage.value == index ? 10 : 5,
                            height:
                                controller.currentPage.value == index ? 10 : 5,
                            decoration: BoxDecoration(
                              color: controller.currentPage.value == index
                                  ? Colors.blue
                                  : Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            right: 10,
            child: TextButton(
              onPressed: controller.nextPage,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Obx(
                    () => Text(
                      controller.currentPage.value == 2 ? "Let's Go" : 'Next',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  Icon(
                    Icons.navigate_next_outlined,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOnboardingPage({
    required String image,
    required String title,
    required String description,
  }) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 500,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.5),
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 150,
          left: 30,
          right: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'Lora',
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                description,
                style: TextStyle(
                  fontFamily: 'Lora',
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
