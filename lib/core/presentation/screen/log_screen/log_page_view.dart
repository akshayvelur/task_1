import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_1/core/presentation/screen/bottom_navigation_bar.dart';
import 'package:task_1/core/presentation/screen/log_screen/bloc/log_bloc.dart';
import 'package:task_1/core/presentation/widgets/intro.dart';
import 'package:task_1/core/presentation/widgets/intro_title.dart';

class LogPageView extends StatelessWidget {
  const LogPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return BlocListener<LogBloc, LogState>(
      listener: (context, state) {
        if (state is SignButtonState
        ) {
          print("helloooiii");
           Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomNavi(),));
        }
    
      },
      child: Column(
        children: [
          Container(
            height: 600,
            child: PageView(
              controller: controller,
              children: [
                Container(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // intro image
                        Intro(),
                        // into text
                        IntroTitle(),
                      ],
                    ),
                  ),
                ),

                Container(
                  height: 30,
                  color: const Color.fromARGB(255, 87, 85, 85),
                ),
                Container(color: Colors.black),
                Container(color: Colors.blue),
              ],
            ),
          ),
          SizedBox(height: 20),
          SmoothPageIndicator(
            effect: WormEffect(
              dotHeight: 8.0,
              dotWidth: 8.0,
              spacing: 10.0,
              radius: 16.0,
              activeDotColor: const Color.fromARGB(255, 0, 0, 0),
              dotColor: Colors.grey,
            ),
            controller: controller,
            count: 4,
          ),
          SizedBox(height: 75),
          Container(
            width: 340,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(5),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              onPressed: () {},
              child: Text(
                "Join now",
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          SizedBox(height: 10),
          TextButton(
            onPressed: () {
              context.read<LogBloc>().add(SignButtonEvent());
            },
            child: Text(
              "Sign in",
              style: GoogleFonts.roboto(fontSize: 16, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
