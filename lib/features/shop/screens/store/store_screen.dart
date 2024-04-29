import 'package:flutter/material.dart';
import 'package:sport_depot/common/widgets/appbar/appbar.dart';
import 'package:sport_depot/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:sport_depot/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/constants/sizes.dart';
import 'package:sport_depot/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          SCartCountericon(onPressed: () {}, iconColor: Colors.black),
        ],
      ),
      body: NestedScrollView(headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: SHelperFunctions.isDarkMode(context) ? SColors.black : SColors.white,
              expandedHeight: 440,

              flexibleSpace: Padding(
                padding: const EdgeInsets.all(SSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [

                    // Search Bar
                    SizedBox(height: SSizes.spaceBtwItems),
                    SSearchContainer(text: 'Search in Store', showBorder: true, showBackground: false, padding: EdgeInsets.zero),
                    SizedBox(height: SSizes.spaceBtwSections),
                  ]
                ),
              ),
            ),
          ];
        }, body: Container(),
      ),
    );
  }
}