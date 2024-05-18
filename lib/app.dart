import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

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
