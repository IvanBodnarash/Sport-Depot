import 'package:flutter/material.dart';

import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/constants/sizes.dart';
import 'package:sport_depot/utils/constants/text_strings.dart';
import 'package:sport_depot/utils/helpers/helper_functions.dart';

class STermsAndConditionCheckbox extends StatelessWidget {
  const STermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: SSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '${STexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: STexts.privacyPolicy,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? SColors.white : SColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark ? SColors.white : SColors.primary,
                      )),
              TextSpan(
                  text: ' and ', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: STexts.termsOfUse,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? SColors.white : SColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark ? SColors.white : SColors.primary,
                      )),
            ],
          ),
        ),
      ],
    );
  }
}
