import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/helpers/helper_functions.dart';

class SCartCountericon extends StatelessWidget {
  const SCartCountericon({
    super.key,
    required this.onPressed,
    required this.iconColor,
  });

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    
    return Stack(children: [
      IconButton(
          onPressed: onPressed,
          icon: Icon(Iconsax.shopping_bag, color: dark ? SColors.white : iconColor)),
      Positioned(
        right: 0,
        child: Container(
          width: 18,
          height: 18,
          decoration: BoxDecoration(
            color: SColors.black,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: Text('2',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: SColors.white, fontSizeFactor: 0.8)),
          ),
        ),
      )
    ]);
  }
}