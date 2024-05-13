import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sport_depot/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/constants/sizes.dart';
import 'package:sport_depot/utils/helpers/helper_functions.dart';

class SOrderListItems extends StatelessWidget {
  const SOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 8,
      separatorBuilder: (_, __) => const SizedBox(height: SSizes.spaceBtwItems),
      itemBuilder: (_, index) => SRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(SSizes.md),
        backgroundColor: dark ? SColors.dark : SColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Row 1
            Row(
              children: [
                // 1 - Icon
                const Icon(Iconsax.ship),
                const SizedBox(width: SSizes.spaceBtwItems / 2),
      
                // 2 - Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(color: SColors.primary, fontWeightDelta: 1),
                      ),
                      Text('07 Aug 2024', style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),
      
                // 3 - Icon
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Iconsax.arrow_right_34, size: SSizes.iconSm),
                ),
              ],
            ),
      
            const SizedBox(height: SSizes.spaceBtwItems),
      
            // Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // 1 - Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: SSizes.spaceBtwItems / 2),
                  
                      // 2 - Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text('[#2489]', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
      
                Expanded(
                  child: Row(
                    children: [
                      // 1 - Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: SSizes.spaceBtwItems / 2),
                  
                      // 2 - Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shipping date',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text('25 Aug 2024', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}