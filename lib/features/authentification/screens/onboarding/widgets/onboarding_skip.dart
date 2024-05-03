import 'package:flutter/material.dart';
import 'package:sport_depot/features/authentification/controllers.onboarding/onboaring_controller.dart';
import 'package:sport_depot/utils/constants/sizes.dart';
import 'package:sport_depot/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: SDeviceUtils.getAppBarHeight(),
      right: SSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: Text(
          'Skip',
          style: TextStyle(
              color: Colors.grey[800],
              fontSize: 16),
        ),
      ),
    );
  }
}
