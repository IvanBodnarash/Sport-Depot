import "package:flutter/material.dart";

import "package:sport_depot/common/styles/spacing_styles.dart";
import "package:sport_depot/common/widgets.login_signup/form_divider.dart";
import "package:sport_depot/common/widgets.login_signup/social_buttons.dart";
import "package:sport_depot/features/authentification/screens/login/widgets/login_form.dart";
import "package:sport_depot/features/authentification/screens/login/widgets/login_header.dart";
import "package:sport_depot/utils/constants/sizes.dart";
import "package:sport_depot/utils/helpers/helper_functions.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, title and subtitle
              SLoginHeader(dark: dark),

              // Login Form
              const SLoginForm(),

              // Divider
              SFormDivider(dark: dark),
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








