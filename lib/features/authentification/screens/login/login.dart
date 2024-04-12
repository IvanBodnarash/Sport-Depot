import "package:flutter/material.dart";
import "package:get/get.dart";

import "package:sport_depot/common/styles/spacing_styles.dart";
import "package:sport_depot/common/widgets.login_signup/form_divider.dart";
import "package:sport_depot/common/widgets.login_signup/social_buttons.dart";
import "package:sport_depot/features/authentification/screens/login/widgets/login_form.dart";
import "package:sport_depot/features/authentification/screens/login/widgets/login_header.dart";
import "package:sport_depot/utils/constants/sizes.dart";
import "package:sport_depot/utils/constants/text_strings.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = SHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, title and subtitle
              const SLoginHeader(),

              // Login Form
              const SLoginForm(),

              // Divider
              SFormDivider(dividerText: STexts.orSignInWith.capitalize!),
              const SizedBox(height: SSizes.spaceBtwSections),

              // Footer
              const SSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}








