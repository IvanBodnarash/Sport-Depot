import 'package:flutter/material.dart';
import 'package:sport_depot/common/widgets/chips/choise_chip.dart';
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
                  const SSectionHeading(
                      title: 'Variation', showActionButton: false),
                  const SizedBox(width: SSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const SProductTitleText(
                              title: 'Price', smallSize: true),
                          const SizedBox(width: SSizes.spaceBtwItems),

                          // Actual Price
                          Text(
                            '\$25',
                            style:
                                Theme.of(context).textTheme.titleSmall!.apply(
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
                          const SProductTitleText(
                              title: 'Stock', smallSize: true),
                          const SizedBox(width: SSizes.spaceBtwItems),
                          Text('in Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              // Variation Description
              const SProductTitleText(
                title:
                    'This is the description of the product lorem ipsum dolor sit amet',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: SSizes.spaceBtwItems),

        // Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SSectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: SSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                SChoiseChip(
                    text: 'Green', selected: false, onSelected: (value) {}),
                SChoiseChip(
                    text: 'Blue', selected: true, onSelected: (value) {}),
                SChoiseChip(
                    text: 'Yellow', selected: false, onSelected: (value) {}),
                SChoiseChip(
                    text: 'White', selected: false, onSelected: (value) {}),
                SChoiseChip(
                    text: 'Purple', selected: false, onSelected: (value) {}),
                SChoiseChip(
                    text: 'Black', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SSectionHeading(title: 'Size'),
            const SizedBox(height: SSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                SChoiseChip(
                    text: 'EU 34', selected: true, onSelected: (value) {}),
                SChoiseChip(
                    text: 'EU 36', selected: false, onSelected: (value) {}),
                SChoiseChip(
                    text: 'EU 38', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
