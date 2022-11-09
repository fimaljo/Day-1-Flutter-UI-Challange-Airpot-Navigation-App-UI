import 'package:day_1_airpot_navigation_app/screens/home.page.dart';
import 'package:day_1_airpot_navigation_app/screens/second.dart';
import 'package:day_1_airpot_navigation_app/widgets/delay.animation.dart';
import 'package:day_1_airpot_navigation_app/widgets/offsetanimation.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int pageIndex = 0;
  final pages = [
    const HomePage(),
    const Second(),
    const HomePage(),
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: pages[pageIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: buildNavBar(size, context),
    );
  }

  OffsetAnimation buildNavBar(Size size, BuildContext context) {
    return OffsetAnimation(
      child: Container(
        width: size.width,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.transparent),
        child: Stack(
          children: [
            Positioned(
              left: 70,
              child: Container(
                width: 250,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:
                            pageIndex == 0 ? Colors.yellow : Colors.transparent,
                      ),
                      child: IconButton(
                        icon: Icon(Icons.home, color: Colors.black),
                        onPressed: () {
                          setState(() {
                            pageIndex = 0;
                          });
                        },
                        splashColor: Colors.white,
                      ),
                    ),
                    // Container(
                    //   width: size.width * 0.20,
                    // ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:
                            pageIndex == 1 ? Colors.yellow : Colors.transparent,
                      ),
                      child: IconButton(
                        icon: Icon(Icons.map, color: Colors.black),
                        onPressed: () {
                          setState(() {
                            pageIndex = 1;
                          });
                        },
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.account_box, color: Colors.black
                          //  pageIndex == 0
                          //     ? Colors.black
                          //     : Colors.grey.shade400,
                          ),
                      onPressed: () {
                        // setState(() {
                        //   pageIndex = 0;
                        // });
                      },
                      splashColor: Colors.black,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.menu_book,
                        color: Colors.black,
                        //pageIndex == 0 ? Colors.black : Colors.grey.shade400,
                      ),
                      onPressed: () {
                        // setState(() {
                        //   pageIndex = 0;
                        // });
                      },
                      splashColor: Colors.white,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
