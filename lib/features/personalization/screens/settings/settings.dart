import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sport_depot/common/widgets/appbar/appbar.dart';
import 'package:sport_depot/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:sport_depot/common/widgets/images/s_circular_image.dart';
import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/constants/image_strings.dart';
import 'package:sport_depot/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            SPrimaryHeaderContainer(
              child: Column(
                children: [

                  // App Bar
                  SAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: SColors.white),
                    ),
                  ),

                  // User Profile Card
                  ListTile(
                    leading: const SCircularImage(
                      image: SImages.user,
                      width: 50,
                      height: 50,
                      padding: 0,
                    ),
                    title: Text(
                      'IvnBdnr.Dev',
                      style: Theme.of(context).textTheme.headlineSmall!.apply(color: SColors.white),
                    ),
                    subtitle: Text(
                      '@IvnBdnr.Dev',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(color: SColors.white),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.edit,
                        color: SColors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: SSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
