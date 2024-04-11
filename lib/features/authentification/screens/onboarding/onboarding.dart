import 'package:flutter/material.dart';

import 'package:sport_depot/features/authentification/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:sport_depot/features/authentification/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:sport_depot/features/authentification/screens/onboarding/widgets/onboarding_page.dart';
import 'package:sport_depot/features/authentification/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:sport_depot/utils/constants/image_strings.dart';
import 'package:sport_depot/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            children: const [
              OnBoardingPage(
                image: SImages.onBoardingImage1,
                title: STexts.onBoardingTitle1,
                subTitle: STexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: SImages.onBoardingImage2,
                title: STexts.onBoardingTitle2,
                subTitle: STexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: SImages.onBoardingImage3,
                title: STexts.onBoardingTitle3,
                subTitle: STexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip Button
          const OnBoardingSkip(),

          // Dot Navigation Smooth Page Indicator
          const OnBoardingDotNavigation(),

          // Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
