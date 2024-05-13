import 'package:flutter/material.dart';
import 'package:sport_depot/common/widgets/appbar/appbar.dart';
import 'package:sport_depot/common/widgets/brands/brand_card.dart';
import 'package:sport_depot/common/widgets/products/sortable/sortable_products.dart';
import 'package:sport_depot/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SAppBar(title: Text('Nike'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              // Brand Detail
              SBrandCard(showBorder: true),
              SizedBox(height: SSizes.spaceBtwSections),

              SSortaleProducts(),
            ]
          ),
        ),
      ),
    );
  }
}