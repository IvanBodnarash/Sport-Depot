import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:sport_depot/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:sport_depot/common/widgets/products/ratings/rating_indicator.dart';
import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/constants/image_strings.dart';
import 'package:sport_depot/utils/constants/sizes.dart';
import 'package:sport_depot/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(SImages.userProfileImage1)),
                const SizedBox(width: SSizes.spaceBtwItems),
                Text('Charles Catsvel', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: SSizes.spaceBtwItems),

        // Review
        Row(
          children: [
            const SRatingBarIndicator(rating: 4),
            const SizedBox(width: SSizes.spaceBtwItems),
            Text('01 May, 2024', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: SSizes.spaceBtwItems),
        const ReadMoreText(
          'Absolutely loving this sports store app! It\'s like having a virtual mall for all my athletic needs. The interface is clean and intuitive, making it a breeze to browse through the wide range of products. Plus, the checkout process is smooth and hassle-free. Kudos to the developers for creating such a seamless shopping experience!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Read more',
          trimExpandedText: 'Read less',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: SColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: SColors.primary),
        ),
        const SizedBox(height: SSizes.spaceBtwItems),

        // Company Review
        SRoundedContainer(
          backgroundColor: dark ? SColors.darkerGrey : SColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(SSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sport Depot', style: Theme.of(context).textTheme.titleMedium),
                    Text('1 May, 2024', style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: SSizes.spaceBtwItems),
                const ReadMoreText(
                  'Thank you so much for your kind words! We\'re thrilled to hear that you\'re enjoying our sports store app and that it\'s meeting your needs seamlessly. Our team works hard to provide users like you with the best possible experience, so your feedback truly means a lot to us. If you ever have any questions or suggestions for how we can improve even further, please don\'t hesitate to reach out. Happy shopping!',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Read more',
                  trimExpandedText: 'Read less',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: SColors.primary),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: SColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: SSizes.spaceBtwSections),
      ],
    );
  }
}