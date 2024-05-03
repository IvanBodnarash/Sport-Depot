import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sport_depot/common/widgets/icons/s_circular_icon.dart';
import 'package:sport_depot/common/widgets/layouts/grid_layout.dart';
import 'package:sport_depot/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:sport_depot/features/shop/screens/home/home.dart';
import 'package:sport_depot/utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          SCircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              SGridLayout(
                itemCount: 6,
                itemBuilder: (_, index) => const SProductCardVertical(),
              )
            ]
          )
        ),
      ),
    );
  }
}