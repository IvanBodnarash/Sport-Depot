import 'package:flutter/material.dart';
import 'package:sport_depot/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:sport_depot/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:sport_depot/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:sport_depot/utils/constants/sizes.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SPrimaryHeaderContainer(
              child: Column(
                children: [
                  // AppBar
                  SHomeAppBar(),
                  SizedBox(height: SSizes.spaceBtwSections),

                  // Search Bar
                  SSearchContainer(text: 'Search in Store',)

                  // Categories
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
