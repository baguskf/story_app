import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_list_controller.dart';

class HomeListView extends GetView<HomeListController> {
  const HomeListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 103, 0, 147),
                  const Color.fromARGB(255, 0, 18, 151),
                ],
              ),
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Selamat datang',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'myfont',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    '"Temukan kisah-kisah inspiratif dan berbagi momen berharga dengan orang lain"',
                    style: TextStyle(
                      fontFamily: 'myfont',
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 100,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: Card(
                    color: const Color.fromARGB(255, 243, 243, 243),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 300,
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              child: Image.asset(
                                'assets/images/login.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Story by : nama ${index + 1}',
                            style: TextStyle(
                              fontFamily: 'myfont',
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Title : title ${index + 1}',
                            style: TextStyle(
                              fontFamily: 'myfont',
                              fontSize: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              gradient: LinearGradient(
                                colors: [
                                  const Color.fromARGB(255, 103, 0, 147),
                                  const Color.fromARGB(255, 0, 18, 151),
                                ],
                              ),
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                minimumSize: const Size(double.infinity, 50),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Lihat Detail',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'myfont',
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
