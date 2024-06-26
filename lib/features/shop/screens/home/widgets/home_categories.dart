import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_depot/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:sport_depot/features/shop/screens/sub_category/sub_category.dart';
import 'package:sport_depot/utils/constants/image_strings.dart';

class SHomeCategories extends StatelessWidget {
  const SHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return SVerticalImageText(
            image: SImages.clothes,
            title: 'Clothes',
            onTap: () => Get.to(() => const SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}