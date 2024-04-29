import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_depot/features/authentification/screens/onboarding/onboarding.dart';
import 'package:sport_depot/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.dark,
      theme: SAppTheme.lightTheme,
      darkTheme: SAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}