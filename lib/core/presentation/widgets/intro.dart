import 'dart:ui';

import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return   Stack(
  children: [
    // Base image
    Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Container(
        height: 370,
        width: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          image: DecorationImage(
            image: AssetImage("assets/WhatsApp Image 2025-04-08 at 11.41.13 AM.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),

    // Increasing blur from transparent top to blurred bottom
    Positioned.fill(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: ShaderMask(
          shaderCallback: (Rect bounds) {
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                const Color.fromARGB(96, 232, 230, 230),
                    const Color.fromARGB(202, 232, 230, 230),
                          const Color.fromARGB(255, 232, 230, 230),

              ],
              stops: [0.6, 0.8, 0.9, 1.0],
            ).createShader(bounds);
          },
          blendMode: BlendMode.srcOver,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0, sigmaY: 10),
            child: Container(
              color: const Color.fromARGB(0, 0, 0, 0),
            ),
          ),
        ),
      ),
    ),
  ],
);
  }
}