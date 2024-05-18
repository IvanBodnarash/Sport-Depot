import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sport_depot/features/authentification/screens/login/login.dart';
import 'package:sport_depot/features/authentification/screens/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // Variables
  final deviceStorage = GetStorage();

  @override
  void onReady() {
    // super.onReady();
    FlutterNativeSplash.remove();
    screenRedirect();
  }
  // @override
  // void onReady() {
  //   FlutterNativeSplash.remove();
  //   screenRedirect();
  // }

  // Function to show relevant screen
  screenRedirect() {
    // Local Storage
    if (kDebugMode) {
      print('==================== LOCAL STORAGE ====================');
      print(deviceStorage.read('IsFirstTime'));
    }

    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const OnBoardingScreen());
  }

  // ------------- EMAIL & PASSWORD LOGIN ------------- //

  // [E-mail Authentication] Login

  // [E-mail Authentication] Register
}
