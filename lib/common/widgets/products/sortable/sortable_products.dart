import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sport_depot/common/widgets/layouts/grid_layout.dart';
import 'package:sport_depot/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:sport_depot/utils/constants/sizes.dart';

class SSortaleProducts extends StatelessWidget {
  const SSortaleProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.sort),
          ),
          onChanged: (value) {},
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
        ),
        const SizedBox(height: SSizes.spaceBtwSections),
            
        // Products
        SGridLayout(itemCount: 8, itemBuilder: (_, index) => const SProductCardVertical()),
      ],
    );
  }
}