import 'package:flutter/material.dart';
import 'package:sport_depot/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sport_depot/common/widgets/brands/brand_card.dart';
import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/constants/sizes.dart';
import 'package:sport_depot/utils/helpers/helper_functions.dart';

class SBrandsShowcase extends StatelessWidget {
  const SBrandsShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SRoundedContainer(
      showBorder: true,
      borderColor: SColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(SSizes.sm),
      margin: const EdgeInsets.only(bottom: SSizes.spaceBtwItems),
      child: Column(
        children: [
          // Brand with Products Count
          const SBrandCard(
            showBorder: false,
          ),
          const SizedBox(height: SSizes.spaceBtwItems),
    
          // Brand Top 3 Products Images
          Row(
            children: images.map((image) => brandTopProductImageWidget(image, context)).toList(),
          ),
        ]
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: SRoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(SSizes.sm),
        margin: const EdgeInsets.only(right: SSizes.sm),
        backgroundColor: SHelperFunctions.isDarkMode(context) ? SColors.darkerGrey : SColors.light, 
        child: Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),
    );
  }
}