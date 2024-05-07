import 'package:flutter/material.dart';
import 'package:sport_depot/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sport_depot/common/widgets/texts/product_price_text.dart';
import 'package:sport_depot/common/widgets/texts/product_title_text.dart';
import 'package:sport_depot/common/widgets/texts/section_heading.dart';
import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/constants/sizes.dart';
import 'package:sport_depot/utils/helpers/helper_functions.dart';

class SProductAttributes extends StatelessWidget {
  const SProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // Selected Attribute Pricing & Description
        SRoundedContainer(
          padding: const EdgeInsets.all(SSizes.sm),
          backgroundColor: dark ? SColors.darkGrey : SColors.grey,
          child: Column(
            children: [
              //Title, Price and Stock Status
              Row(
                children: [
                  const SSectionHeading(title: 'Variation', showActionButton: false),
                  SizedBox(width: SSizes.spaceBtwItems),
                  Column(
                    children: [
                      const SProductTitleText(title: 'Price', smallSize: true),

                      // Actual Price
                      Text(
                        '\$25',
                        style: Theme.of(context).textTheme.titleSmall!.apply(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      const SizedBox(width: SSizes.spaceBtwItems),

                      // Sale Price
                      const SProductPriceText(price: '20'),
                    ],
                  ),

                  // Stock Status
                  Row(
                    children: [
                      const SProductTitleText(title: 'Stock', smallSize: true),
                      Text('in Stock', style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        // Variation Description
      ],
    );
  }
}
