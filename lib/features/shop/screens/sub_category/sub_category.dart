import 'package:flutter/material.dart';
import 'package:sport_depot/common/widgets/appbar/appbar.dart';
import 'package:sport_depot/common/widgets/images/s_rouned_image.dart';
import 'package:sport_depot/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:sport_depot/common/widgets/texts/section_heading.dart';
import 'package:sport_depot/utils/constants/image_strings.dart';
import 'package:sport_depot/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SAppBar(title: Text('Clothes'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              // Banner
              const SRoundedImage(
                width: double.infinity,
                imageUrl: SImages.promoBanner1,
                applyImageRadius: true,
              ),
              const SizedBox(height: SSizes.spaceBtwSections),

              // Sub Categories
              Column(
                children: [
                  // Heading
                  SSectionHeading(
                    title: 'Sports Clothes',
                    onPressed: () {},
                  ),
                  const SizedBox(height: SSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(width: SSizes.spaceBtwItems),
                      itemBuilder: (context, index) => const SProductCardHorizontal(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
