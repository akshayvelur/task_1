import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_1/core/presentation/widgets/intro.dart';
import 'package:task_1/core/presentation/widgets/intro_title.dart';
import 'package:task_1/core/presentation/screen/log_screen/log_page_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 230, 230),
      body:LogPageView()
    );
  }
}
