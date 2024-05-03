import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sport_depot/common/widgets/brands/brand_show_case.dart';
import 'package:sport_depot/common/widgets/layouts/grid_layout.dart';
import 'package:sport_depot/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:sport_depot/common/widgets/texts/section_heading.dart';
import 'package:sport_depot/utils/constants/image_strings.dart';
import 'package:sport_depot/utils/constants/sizes.dart';

class SCategoryTab extends StatelessWidget {
  const SCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(children: [
            // Brands
            const SBrandsShowcase(images: [
              SImages.productImage1,
              SImages.productImage2,
              SImages.productImage3,
            ]),

            // Products
            SSectionHeading(
              title: 'You might also like',
              onPressed: () {},
            ),
            const SizedBox(height: SSizes.spaceBtwItems),

            SGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const SProductCardVertical()),
            const SizedBox(height: SSizes.spaceBtwSections),
          ]),
        ),
      ],
    );
  }
}
