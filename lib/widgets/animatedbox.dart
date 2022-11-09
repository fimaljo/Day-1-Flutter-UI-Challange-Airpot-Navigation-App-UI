import 'package:flutter/material.dart';

class AnimatedBox extends StatelessWidget {
  final int hieght;
  final int width;
  final IconData icon;
  final String text;
  final Color color;
  const AnimatedBox(
      {Key? key,
      required this.hieght,
      required this.width,
      required this.icon,
      required this.color,
      this.text = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: const Duration(microseconds: 250),
      tween: Tween(begin: 0, end: 1),
      builder: (context, value, _) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          height: value * (hieght),
          width: value * (width),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 40, top: 30),
            child: Wrap(
              children: [
                Icon(icon),
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
