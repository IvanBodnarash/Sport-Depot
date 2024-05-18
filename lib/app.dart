import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sport_depot/data/services/onboarding_service.dart';
import 'package:sport_depot/features/authentification/screens/login/login.dart';
import 'package:sport_depot/features/authentification/screens/onboarding/onboarding.dart';
import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return GetMaterialApp(
  //     themeMode: ThemeMode.system,
  //     theme: SAppTheme.lightTheme,
  //     darkTheme: SAppTheme.darkTheme,
  //     home: const Scaffold(
  //       backgroundColor: SColors.primary,
  //       body: Center(
  //         child: CircularProgressIndicator(
  //           color: Colors.white,
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {    
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: SAppTheme.lightTheme,
      darkTheme: SAppTheme.darkTheme,
      home: const Scaffold(
        backgroundColor: SColors.primary,
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
