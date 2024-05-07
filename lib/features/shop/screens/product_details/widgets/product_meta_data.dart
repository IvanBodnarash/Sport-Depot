import 'package:flutter/material.dart';
import 'package:sport_depot/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sport_depot/common/widgets/images/s_circular_image.dart';
import 'package:sport_depot/common/widgets/texts/product_price_text.dart';
import 'package:sport_depot/common/widgets/texts/product_title_text.dart';
import 'package:sport_depot/common/widgets/texts/s_brand_title_text.dart';
import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/constants/enums.dart';
import 'package:sport_depot/utils/constants/image_strings.dart';
import 'package:sport_depot/utils/constants/sizes.dart';
import 'package:sport_depot/utils/helpers/helper_functions.dart';

class SProductMetaData extends StatelessWidget {
  const SProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = SHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price and Sale Tag
        Row(
          children: [
            // Sale Tag
            SRoundedContainer(
              radius: SSizes.sm,
              backgroundColor: SColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: SSizes.sm,
                vertical: SSizes.xs,
              ),
              child: Text('25%',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: SColors.black)),
            ),
            const SizedBox(width: SSizes.spaceBtwItems),

            // Price
            Text('\$250',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: SSizes.spaceBtwItems),
            const SProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(height: SSizes.spaceBtwItems / 1.5),

        // Title
        const SProductTitleText(title: 'Product Title'),
        const SizedBox(height: SSizes.spaceBtwItems / 1.5),

        // Stock Status
        Row(
          children: [
            const SBrandTitleText(title: 'Status'),
            const SizedBox(width: SSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: SSizes.spaceBtwItems / 1.5),

        // Brand
        Row(
          children: [
            SCircularImage(
              image: SImages.clothes,
              width: 32,
              height: 32,
              overlayColor: darkMode ? SColors.white : SColors.black,
            ),
            const SBrandTitleText(title: 'Nike', brandTextSize: TextLSizes.medium,)
          ],
        ),
      ],
    );
  }
}
