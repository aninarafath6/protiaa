import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:protiaa_codex/constants/app_colors.dart';
import 'package:protiaa_codex/constants/app_images.dart';
import 'package:protiaa_codex/views/screens/home/home_screen.dart';
import 'package:protiaa_codex/views/widgets/noiseContainer_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'protiaa',
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: Image.asset(AppImages.LOGO, width: 200),
        nextScreen: HomeScreen(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: AppColors.BG_1,
      ),
    );
  }
}
