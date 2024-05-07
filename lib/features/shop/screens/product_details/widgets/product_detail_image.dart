import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sport_depot/common/widgets/appbar/appbar.dart';
import 'package:sport_depot/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:sport_depot/common/widgets/icons/s_circular_icon.dart';
import 'package:sport_depot/common/widgets/images/s_rouned_image.dart';
import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/constants/image_strings.dart';
import 'package:sport_depot/utils/constants/sizes.dart';
import 'package:sport_depot/utils/helpers/helper_functions.dart';

class SProductImageSlider extends StatelessWidget {
  const SProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return SCurvedEdgeWidget(
      child: Container(
        color: dark ? SColors.darkGrey : SColors.light,
        child: Stack(
          children: [
            // Main Large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(SSizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(SImages.productImage1),
                  ),
                ),
              ),
            ),

            // Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: SSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(height: SSizes.spaceBtwItems),
                  itemBuilder: (_, index) => Container(
                    margin: const EdgeInsets.all(SSizes.xs),
                    child: SRoundedImage(
                      width: 80,
                      backgroundColor: dark ? SColors.dark : SColors.white,
                      border: Border.all(color: SColors.primary),
                      padding: const EdgeInsets.all(SSizes.sm),
                      imageUrl: SImages.productImage3,
                    ),
                  ),
                ),
              ),
            ),

            // Appbar Icons
            const SAppBar(
              showBackArrow: true,
              actions: [
                SCircularIcon(icon: Iconsax.heart5, color: Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
