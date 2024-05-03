import 'package:flutter/material.dart';
import 'package:sport_depot/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sport_depot/common/widgets/images/s_circular_image.dart';
import 'package:sport_depot/common/widgets/texts/s_brand_titl_with_icon.dart';
import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/constants/enums.dart';
import 'package:sport_depot/utils/constants/image_strings.dart';
import 'package:sport_depot/utils/constants/sizes.dart';
import 'package:sport_depot/utils/helpers/helper_functions.dart';

class SBrandCard extends StatelessWidget {
  const SBrandCard({
    super.key,
    this.onTap,
    required this.showBorder,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SRoundedContainer(
        showBorder: showBorder,
        backgroundColor: SColors.transparent,
        padding: const EdgeInsets.all(SSizes.sm),
        child: Row(
          children: [
            // Icon
            Flexible(
              child: SCircularImage(
                isNetworkImage: false,
                image: SImages.clothes,
                backgroundColor: Colors.transparent,
                overlayColor: SHelperFunctions.isDarkMode(context)
                    ? SColors.white
                    : SColors.black,
              ),
            ),
            const SizedBox(width: SSizes.spaceBtwItems / 2),

            // Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SBrandTitleWithIcon(
                      title: 'Nike', brandTextSize: TextLSizes.large),
                  Text('48 products',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
