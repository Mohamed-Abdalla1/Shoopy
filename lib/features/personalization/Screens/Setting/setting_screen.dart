import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/core/common/widgets/Rounded/t_circular_image.dart';
import 'package:shoppy/core/common/widgets/app%20bar/custom_app_bar.dart';
import 'package:shoppy/core/common/widgets/home_page/primary_header_home_page.dart';
import 'package:shoppy/core/common/widgets/texts/heading_section.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/constants/image_strings.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/features/personalization/Screens/Setting/setting_listTile.dart';
import 'package:shoppy/features/personalization/Screens/widgets/user_profile.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderHomePage(
              height: 200,
              child: Column(
                children: [
                  CustomAppBar(
                    showBackArrow: false,
                    title: Text(
                      'Account Setting',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),
                  //user profile
                  const TUserProfile(
                    email: 'MohamedAbdalla@gmail.com',
                    title: 'Mohamed Abdallah',
                  ),
                  //body
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //Acount setting
                  const HeadingSection(title: 'Account Setting'),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  //list tile
                  const SettingListtile(
                      title: 'My Address',
                      subTitle: 'Set shopping delivery adresss',
                      icon: Iconsax.safe_home),
                  const SettingListtile(
                      title: 'My Cart',
                      subTitle: 'Add or remove product ',
                      icon: Iconsax.shopping_cart),
                  const SettingListtile(
                      title: 'My orders',
                      subTitle: 'IN-Progress and complete orders',
                      icon: Iconsax.bag_tick),
                  const SettingListtile(
                      title: 'Bank Account',
                      subTitle: 'Register to Bank account ',
                      icon: Iconsax.bank),
                  const SettingListtile(
                      title: 'My coupens',
                      subTitle: 'List of all discount coupens',
                      icon: Iconsax.discount_shape),
                  const SettingListtile(
                      title: 'My Notifications',
                      subTitle: 'Set any kind of notifcation message',
                      icon: Iconsax.notification),
                  const SettingListtile(
                      title: 'Account Privey',
                      subTitle: 'Manage your data and protect it',
                      icon: Iconsax.security_card),

                  //app settting
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  const HeadingSection(title: 'Account Setting'),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  const SettingListtile(
                      title: 'Load Data',
                      subTitle: 'Upload data to profile',
                      icon: Iconsax.document_upload),
                  SettingListtile(
                    title: 'GeoLocation',
                    subTitle: 'Set Recommendation based on location',
                    icon: Iconsax.location,
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  SettingListtile(
                    title: 'SafeMode',
                    subTitle: 'Search result is safe for all ages',
                    icon: Iconsax.security_user,
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  SettingListtile(
                    title: 'HD Image Quality',
                    subTitle: 'Set Image Quality to be seen',
                    icon: Iconsax.image,
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text('Log Out')),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
