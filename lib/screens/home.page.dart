import 'dart:math' as math;

import 'package:day_1_airpot_navigation_app/widgets/animatedbox.dart';
import 'package:day_1_airpot_navigation_app/widgets/delay.animation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 30, right: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            wishWidget(),
            const SizedBox(
              height: 5,
            ),
            airPortMapWidget(),
            const SizedBox(
              height: 20,
            ),
            QuickWidgets(size),
            const SizedBox(
              height: 25,
            ),
            upcomingdeparturesWidget(),
            upcomigdeparturesListView()
          ],
        ),
      ),
    );
  }

  DelayedAnimation wishWidget() {
    return DelayedAnimation(
      child: const Text(
        "Good afternoon!",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 25,
        ),
      ),
    );
  }

  Expanded upcomigdeparturesListView() {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.grey,
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return DelayedAnimation(
            child: const ListTile(
              textColor: Colors.white,
              title: Text("Singapoure-San Francisco"),
              subtitle: Text(
                "27 Aug 2022 13-22",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              trailing: Text(
                "Gate 1c",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  DelayedAnimation upcomingdeparturesWidget() {
    return DelayedAnimation(
      child: Row(
        children: [
          const Text(
            "Upcoming departures",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
          ),
          const Spacer(),
          const Text(
            "View all",
            style: TextStyle(color: Colors.grey),
          ),
          Transform.rotate(
            angle: -35 * -math.pi / 180,
            child: const Icon(
              Icons.arrow_upward,
              size: 40,
              color: Colors.yellow,
            ),
          )
        ],
      ),
    );
  }

  SizedBox QuickWidgets(Size size) {
    return SizedBox(
      width: size.width,
      height: 300,
      child: Stack(
        children: const [
          Positioned(
            child: AnimatedBox(
              hieght: 80,
              width: 180,
              icon: Icons.transfer_within_a_station,
              color: Colors.yellow,
              text: "Transfer",
            ),
          ),
          Positioned(
            left: 190,
            child: AnimatedBox(
              hieght: 80,
              width: 150,
              icon: Icons.bed,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 100,
            child: AnimatedBox(
              hieght: 80,
              width: 130,
              icon: Icons.luggage,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 100,
            left: 140,
            child: AnimatedBox(
              hieght: 80,
              width: 200,
              icon: Icons.airplane_ticket,
              color: Colors.yellow,
              text: "Tickets",
            ),
          ),
          Positioned(
            top: 200,
            child: AnimatedBox(
              hieght: 80,
              width: 180,
              icon: Icons.car_crash,
              color: Colors.yellow,
              text: "Car rent",
            ),
          ),
          Positioned(
            top: 200,
            left: 190,
            child: AnimatedBox(
              hieght: 80,
              width: 150,
              icon: Icons.bed,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  DelayedAnimation airPortMapWidget() {
    return DelayedAnimation(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Airport map",
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          Transform.rotate(
            angle: -35 * -math.pi / 180,
            child: const Icon(
              Icons.arrow_upward,
              size: 40,
              color: Colors.yellow,
            ),
          )
        ],
      ),
    );
  }
}
