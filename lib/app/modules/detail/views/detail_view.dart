import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/images/login.png',
              fit: BoxFit.cover,
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              color: Colors.black.withOpacity(0.7),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.3),
                child: IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.arrow_back_ios_new),
                ),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 400,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Image.asset(
                            'assets/images/login.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Story by : Namanya ntar siapa',
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Title : Lorem laborum amet esse reprehenderit ut aliquip.',
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 400,
                    child: SingleChildScrollView(
                      child: Text(
                        'Deskripsi : sadsdsfsdfsdf sdfds fds fds fdsf dsf dsf dsf dsf ds fds fds fds fds fds fds fsd fsd fds fds fds fds fds fsd fsd fds fds fds fsd fsd fds fds fsd fds fds fsd f dsf dsf ds fdsf ds fds fds fds fsd dajsdhkasjdhsajkdsalkdoeihjoieroiewhidkfndjsbvdbvhdbvbjsdhbcshdbcsjdbcjbfjbebfbjkbvdjbv nnvsdf foeiwfjidsjfkds fhdofsdkfkdjf jdjfdsojfskdljfosdijfodjfodisf jdofjdsoifjsdfjodsfjdsiofj djifjsdiof djsfjdsiofjdsio fjepwjfwpjfwejfdkf Ad sint non elit deserunt laborum. Commodo dolore incididunt anim do eu officia tempor. Qui veniam cupidatat id ullamco consectetur culpa sunt ea incididunt ut magna qui nostrud. Lorem enim ut nisi voluptate do elit eu qui consequat velit.',
                        style: TextStyle(
                          fontFamily: 'myfont',
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
