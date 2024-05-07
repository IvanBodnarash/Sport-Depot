import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sport_depot/common/widgets/images/s_circular_image.dart';
import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/constants/image_strings.dart';

class SUserProfile extends StatelessWidget {
  const SUserProfile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const SCircularImage(
        image: SImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'IvnBdnr.Dev',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: SColors.white),
      ),
      subtitle: Text(
        '@IvnBdnr.Dev',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: SColors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Iconsax.edit,
          color: SColors.white,
        ),
      ),
    );
  }
}
