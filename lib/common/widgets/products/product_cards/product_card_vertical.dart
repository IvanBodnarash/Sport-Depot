import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sport_depot/common/styles/shadows.dart';
import 'package:sport_depot/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sport_depot/common/widgets/icons/s_circular_icon.dart';
import 'package:sport_depot/common/widgets/images/s_rouned_image.dart';
import 'package:sport_depot/common/widgets/texts/product_price_text.dart';
import 'package:sport_depot/common/widgets/texts/product_title_text.dart';
import 'package:sport_depot/common/widgets/texts/s_brand_titl_with_icon.dart';
import 'package:sport_depot/features/shop/screens/product_details/product_detail.dart';
import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/constants/image_strings.dart';
import 'package:sport_depot/utils/constants/sizes.dart';
import 'package:sport_depot/utils/helpers/helper_functions.dart';

class SProductCardVertical extends StatelessWidget {
  const SProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    // Container with side paddings, colors, radius and shadow
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetail()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          boxShadow: [SShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(SSizes.productImageRadius),
          color: dark ? SColors.darkGrey : SColors.white,
        ),
        child: Column(
          children: [
            // Thumbnail, Wishlist Button, Discount Tag
            SRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(SSizes.sm),
              backgroundColor: dark ? SColors.dark : SColors.light,
              child: Stack(
                children: [
                  // Thumbnail Image
                  const SRoundedImage(
                    imageUrl: SImages.productImage1,
                    applyImageRadius: true,
                  ),

                  // Sale Tag
                  Positioned(
                    top: 12,
                    child: SRoundedContainer(
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
                  ),

                  // Favorite Icon Button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: SCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwItems / 2),

            // Details
            const Padding(
              padding: EdgeInsets.only(left: SSizes.xs),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SProductTitleText(
                      title: 'Nike T-Shirt LA Lakers', smallSize: true),
                  SizedBox(height: SSizes.spaceBtwItems / 2),
                  SBrandTitleWithIcon(title: 'Nike'),
                ],
              ),
            ),

            const Spacer(),

            // Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                const Padding(
                  padding: EdgeInsets.only(left: SSizes.md),
                  child: SProductPriceText(price: '35.00'),
                ),

                // Add to cart Button
                Container(
                  decoration: const BoxDecoration(
                      color: SColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(SSizes.cardRadiusMd),
                        bottomRight: Radius.circular(SSizes.productImageRadius),
                      )),
                  child: const SizedBox(
                    width: SSizes.iconLg * 1.2,
                    height: SSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: SColors.white,
                      ),
                    ),
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
