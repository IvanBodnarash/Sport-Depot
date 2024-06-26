import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/constants/text_strings.dart';
import 'package:sport_depot/utils/helpers/helper_functions.dart';

class SFormDivider extends StatelessWidget {
  const SFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? SColors.darkGrey : SColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(STexts.orSignInWith.capitalize!,
            style: Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
            color: dark ? SColors.darkGrey : SColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 68,
          ),
        ),
      ],
    );
  }
}
