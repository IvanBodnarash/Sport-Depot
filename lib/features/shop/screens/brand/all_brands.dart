import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_depot/common/widgets/appbar/appbar.dart';
import 'package:sport_depot/common/widgets/brands/brand_card.dart';
import 'package:sport_depot/common/widgets/layouts/grid_layout.dart';
import 'package:sport_depot/common/widgets/texts/section_heading.dart';
import 'package:sport_depot/features/shop/screens/brand/brand_products.dart';
import 'package:sport_depot/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SAppBar(title: Text('Brands'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              // Heading
              const SSectionHeading(
                title: 'Brands',
                showActionButton: false,
              ),
              const SizedBox(height: SSizes.spaceBtwItems),

              // Brands
              SGridLayout(
                itemCount: 10,
                itemBuilder: (context, index) => SBrandCard(
                  showBorder: true,
                  onTap: () => Get.to(() => const BrandProducts()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
