import 'package:flutter/material.dart';
import 'package:sport_depot/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:sport_depot/features/shop/screens/product_details/widgets/product_detail_image.dart';
import 'package:sport_depot/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:sport_depot/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:sport_depot/utils/constants/sizes.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image Slider
            SProductImageSlider(),

            // Product Details
            Padding(
              padding: EdgeInsets.only(
                  right: SSizes.defaultSpace,
                  left: SSizes.defaultSpace,
                  bottom: SSizes.defaultSpace),
              child: Column(
                children: [
                  // Rating & Share Button
                  SRatingAndShare(),

                  // Price, Title, Stock, Brand
                  SProductMetaData(),
                  
                  // Attributes
                  SProductAttributes(),
                  // Checkout Button
                  // Description
                  // Reviews
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}


