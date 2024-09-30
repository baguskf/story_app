// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:story_app/app/modules/profil/controllers/profil_controller.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  DetailView({super.key});
  ProfilController profilC = Get.find<ProfilController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: double.infinity,
          child: Stack(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 103, 0, 147),
                      const Color.fromARGB(255, 0, 18, 151),
                    ],
                  ),
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.5),
                    child: IconButton(
                      onPressed: () => Get.back(),
                      icon: Icon(Icons.arrow_back_ios_new),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 800,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Obx(
                      () => Material(
                        color: profilC.isDarkMode.value
                            ? const Color.fromARGB(255, 34, 34, 34)
                            : Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        elevation: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 400,
                              width: double.infinity,
                              child: ClipRRect(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20)),
                                child: Image.asset('assets/images/login.png',
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 370,
                              child: Scrollbar(
                                thickness: 5.0,
                                child: SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                'Story by',
                                                style: TextStyle(
                                                  fontFamily: 'myfont',
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 14,
                                            ),
                                            Text(
                                              ' : ',
                                              style: TextStyle(
                                                  fontFamily: 'myfont',
                                                  fontSize: 20),
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: Text(
                                                'Bagus Karunia Fajar',
                                                style: TextStyle(
                                                  fontFamily: 'myfont',
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                'Title',
                                                style: TextStyle(
                                                  fontFamily: 'myfont',
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 14,
                                            ),
                                            Text(
                                              ' : ',
                                              style: TextStyle(
                                                  fontFamily: 'myfont',
                                                  fontSize: 20),
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: Text(
                                                textAlign: TextAlign.justify,
                                                'Minim officia ut voluptate minim ea minim.',
                                                style: TextStyle(
                                                    fontFamily: 'myfont',
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Deskripsi',
                                          style: TextStyle(
                                            fontFamily: 'myfont',
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          textAlign: TextAlign.justify,
                                          'Laborum ipsum mollit qui nostrud veniam cupidatat tempor. Laborum mollit irure duis velit sint ut ipsum dolor in. Id esse et non cillum. Id excepteur consectetur ut cillum labore elit non magna dolor enim. Culpa officia cillum nostrud consequat exercitation veniam enim ullamco veniam minim nulla. Commodo mollit deserunt velit cillum pariatur pariatur deserunt sint nulla sunt nostrud fugiat nisi.',
                                          style: TextStyle(
                                            fontFamily: 'myfont',
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
