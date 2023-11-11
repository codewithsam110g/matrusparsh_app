import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'page_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(context),
    );
  }
}

Widget SplashScreen(BuildContext context) {
  return FlutterSplashScreen.scale(
    gradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.lightBlue,
        Colors.blue,
      ],
    ),
    childWidget: const SizedBox(
      height: 50,
      child: FlutterLogo(),
    ),
    duration: const Duration(milliseconds: 1500),
    animationDuration: const Duration(milliseconds: 1000),
    onAnimationEnd: () => debugPrint("On Scale End"),
    nextScreen: const PageManager(),
  );
}
