import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sport_depot/utils/constants/colors.dart';

class SRatingBarIndicator extends StatelessWidget {
  const SRatingBarIndicator({
    super.key,
    required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: 3.5,
      itemSize: 20,
      unratedColor: SColors.grey,
      itemBuilder: (_, __) => const Icon(Iconsax.star1, color: SColors.primary),
    );
  }
}
