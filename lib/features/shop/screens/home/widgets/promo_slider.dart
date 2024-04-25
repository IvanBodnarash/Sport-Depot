import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_depot/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:sport_depot/common/widgets/images/s_rouned_image.dart';
import 'package:sport_depot/features/shop/controllers/home_controller.dart';
import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/constants/sizes.dart';

class SPromoSlider extends StatelessWidget {
  const SPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners.map((url) => SRoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: SSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  SCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carouselCurrentIndex.value == i ? SColors.primary : SColors.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
