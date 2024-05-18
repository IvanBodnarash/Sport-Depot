// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sport_depot/features/authentification/screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Update current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Jump to the specific dot when click
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  // Jump to the next page
  void nexPage() {
    if (currentPageIndex.value == 2) {
      final storage = GetStorage();
      storage.write('IsFirstTime', false);
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Skip to the next page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
