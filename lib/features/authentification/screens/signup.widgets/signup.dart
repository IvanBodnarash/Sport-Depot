import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sport_depot/common/widgets.login_signup/form_divider.dart';
import 'package:sport_depot/common/widgets.login_signup/social_buttons.dart';
import 'package:sport_depot/features/authentification/screens/signup.widgets/widgets/signup_form.dart';
import 'package:sport_depot/utils/constants/sizes.dart';
import 'package:sport_depot/utils/constants/text_strings.dart';

class SignupScren extends StatelessWidget {
  const SignupScren({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                STexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: SSizes.spaceBtwSections),

              // Form
              const SSignupForm(),
              const SizedBox(height: SSizes.spaceBtwSections),

              // Divider
              SFormDivider(dividerText: STexts.orSignUpWith.capitalize!,),
              const SizedBox(height: SSizes.spaceBtwSections),

              // Social buttons
              const SSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


