import 'package:flutter/material.dart';
import 'package:sport_depot/common/widgets/appbar/appbar.dart';
import 'package:sport_depot/common/widgets/appbar/tabbar.dart';
import 'package:sport_depot/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:sport_depot/common/widgets/layouts/grid_layout.dart';
import 'package:sport_depot/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:sport_depot/common/widgets/texts/section_heading.dart';
import 'package:sport_depot/common/widgets/brands/brand_card.dart';
import 'package:sport_depot/features/shop/screens/store/widgets/category_tab.dart';
import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/constants/sizes.dart';
import 'package:sport_depot/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: SAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            SCartCountericon(onPressed: () {}, iconColor: Colors.black),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 440,
                automaticallyImplyLeading: false,
                backgroundColor: SHelperFunctions.isDarkMode(context)
                    ? SColors.black
                    : SColors.white,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(SSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      // Search Bar
                      const SizedBox(height: SSizes.spaceBtwSections),
                      const SSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: SSizes.spaceBtwSections),

                      // Featured brands
                      SSectionHeading(
                          title: 'Featured brands', onPressed: () {}),
                      const SizedBox(height: SSizes.spaceBtwItems / 1.5),

                      // Brands Grid
                      SGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return const SBrandCard(showBorder: true);
                        },
                      )
                    ],
                  ),
                ),

                // Tabs
                bottom: const STabBar(tabs: [
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Bicycles')),
                  Tab(child: Text('Sport Inventory')),
                  Tab(child: Text('Accessories')),
                  Tab(child: Text('Devices')),
                  Tab(child: Text('Footwear')),
                ]),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              SCategoryTab(),
              SCategoryTab(),
              SCategoryTab(),
              SCategoryTab(),
              SCategoryTab(),
              SCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
