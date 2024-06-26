import 'package:flutter/material.dart';
import 'package:sport_depot/common/widgets/products/cart/add_remove_button.dart';
import 'package:sport_depot/common/widgets/products/cart/cart_item.dart';
import 'package:sport_depot/common/widgets/texts/product_price_text.dart';
import 'package:sport_depot/utils/constants/sizes.dart';

class SCartItems extends StatelessWidget {
  const SCartItems({
    super.key,
    this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) =>
          const SizedBox(height: SSizes.spaceBtwSections),
      itemBuilder: (_, index) => Column(
        children: [
          // Cart Item
          const SCartItem(),
          if (showAddRemoveButton) const SizedBox(height: SSizes.spaceBtwItems),

          // Add Remove Button Row with total price
          if (showAddRemoveButton)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Extra Space
                    SizedBox(width: 70),

                    // Add Remove Buttons
                    SProductCartAttr(),
                  ],
                ),

                // Product total price
                SProductPriceText(price: '25'),
              ],
            ),
        ],
      ),
    );
  }
}
