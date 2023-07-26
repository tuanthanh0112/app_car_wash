import 'package:appcarwash/src/features/authentication/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:appcarwash/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      home: const OnBoardingScreen(),
    );
  }
}

