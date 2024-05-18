import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sport_depot/features/authentification/controllers/onboarding/onboaring_controller.dart';
import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/constants/sizes.dart';
import 'package:sport_depot/utils/device/device_utility.dart';
import 'package:sport_depot/utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = SHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: SDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: SSizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? SColors.light : SColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
