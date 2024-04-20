import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sport_depot/features/authentification/screens/signup/verify_email.dart';
import 'package:sport_depot/features/authentification/screens/signup/widgets/terms_conditions_checkbox.dart';

import 'package:sport_depot/utils/constants/sizes.dart';
import 'package:sport_depot/utils/constants/text_strings.dart';

class SSignupForm extends StatelessWidget {
  const SSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // First and last name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: STexts.firstName,
                  ),
                ),
              ),
              const SizedBox(width: SSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: STexts.lastName,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),
          // Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelText: STexts.username,
            ),
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),

          // Email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct),
              labelText: STexts.email,
            ),
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),

          // Phone number
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: STexts.phoneNumber,
            ),
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),

          // Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: STexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: SSizes.spaceBtwSections),

          // Terms and conditions Checkbox
          const STermsAndConditionCheckbox(),
          const SizedBox(height: SSizes.spaceBtwSections),

          // Sign Up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(STexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
