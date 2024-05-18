import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sport_depot/features/authentification/controllers/onboarding/onboaring_controller.dart';
import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/constants/sizes.dart';
import 'package:sport_depot/utils/device/device_utility.dart';
import 'package:sport_depot/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return Positioned(
      right: SSizes.defaultSpace,
      bottom: SDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nexPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? SColors.primary : Colors.black,
          side: BorderSide.none,
        ),
        child: const Icon(
          Iconsax.arrow_right_3,
        ),
      ),
    );
  }
}