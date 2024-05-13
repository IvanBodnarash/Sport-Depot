import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_depot/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:sport_depot/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:sport_depot/common/widgets/layouts/grid_layout.dart';
import 'package:sport_depot/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:sport_depot/common/widgets/texts/section_heading.dart';
import 'package:sport_depot/features/shop/screens/all_products/all_products.dart';
import 'package:sport_depot/features/shop/screens/home/widgets/home_categories.dart';
import 'package:sport_depot/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:sport_depot/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/constants/image_strings.dart';
import 'package:sport_depot/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SPrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBar
                  SHomeAppBar(),
                  SizedBox(height: SSizes.spaceBtwSections),

                  // Search Bar
                  SSearchContainer(text: 'Search in Store'),
                  SizedBox(height: SSizes.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: EdgeInsets.only(left: SSizes.defaultSpace),
                    child: Column(
                      children: [
                        // Section Heading
                        SSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: SColors.white,
                        ),
                        SizedBox(height: SSizes.spaceBtwItems),

                        // Categories
                        SHomeCategories(),
                        SizedBox(height: SSizes.spaceBtwSections),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(SSizes.defaultSpace),
              child: Column(
                children: [
                  // Promo Slider
                  const SPromoSlider(
                    banners: [
                      SImages.promoBanner3,
                      SImages.promoBanner3,
                      SImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: SSizes.spaceBtwSections),

                  // Heading
                  SSectionHeading(
                    title: 'Popular Products',
                    onPressed: () => Get.to(() => const AllProducts()),
                  ),
                  const SizedBox(height: SSizes.spaceBtwItems),

                  // Popular Products
                  SGridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) => const SProductCardVertical(),
                  )
                  // SProductCardVertical(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
