import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sport_depot/common/widgets/texts/s_brand_title_text.dart';
import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/constants/enums.dart';
import 'package:sport_depot/utils/constants/sizes.dart';

class SBrandTitleWithIcon extends StatelessWidget {
  const SBrandTitleWithIcon({
    super.key,
    this.textColor,
    this.maxLines = 1,
    required this.title,
    this.iconColor = SColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextLSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextLSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: SBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: SSizes.xs),
        const Icon(
          Iconsax.verify5,
          color: SColors.primary,
          size: SSizes.iconXs,
        )
      ],
    );
  }
}
