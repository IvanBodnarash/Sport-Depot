import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sport_depot/common/widgets/appbar/appbar.dart';
import 'package:sport_depot/common/widgets/images/s_circular_image.dart';
import 'package:sport_depot/common/widgets/texts/section_heading.dart';
import 'package:sport_depot/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:sport_depot/utils/constants/colors.dart';
import 'package:sport_depot/utils/constants/image_strings.dart';
import 'package:sport_depot/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              // Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const SCircularImage(
                      image: SImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {}, child: const Text('Change photo', style: TextStyle(color: SColors.darkGrey))),
                  ],
                ),
              ),

              // Details
              const SizedBox(height: SSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: SSizes.spaceBtwItems),

              // Heading Profile Details
              const SSectionHeading(
                  title: 'Profile Details', showActionButton: false),
              const SizedBox(height: SSizes.spaceBtwItems),

              SProfileMenu(title: 'Name', value: 'Ivan Bdnr', onPressed: () {}),
              SProfileMenu(title: 'Username', value: 'IvnBdnr.Dev', onPressed: () {}),

              const SizedBox(height: SSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: SSizes.spaceBtwItems),

              // Heading Personal Info
              const SSectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: SSizes.spaceBtwItems),

              SProfileMenu(title: 'User Id', value: '84562', icon: Iconsax.copy, onPressed: () {}),
              SProfileMenu(title: 'Email', value: 'ivnBdnr.dev@gmail.com', onPressed: () {}),
              SProfileMenu(title: 'Phone Number', value: '+1-403-456-7891', onPressed: () {}),
              SProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              SProfileMenu(title: 'Date of Birth', value: '30 June, 1999', onPressed: () {}),
              const Divider(),
              const SizedBox(height: SSizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Close Account', style: TextStyle(color: Colors.red)),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
