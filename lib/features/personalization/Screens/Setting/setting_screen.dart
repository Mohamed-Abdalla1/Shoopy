import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/core/common/widgets/Rounded/t_circular_image.dart';
import 'package:shoppy/core/common/widgets/app%20bar/custom_app_bar.dart';
import 'package:shoppy/core/common/widgets/home_page/primary_header_home_page.dart';
import 'package:shoppy/core/common/widgets/texts/heading_section.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/constants/image_strings.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
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
                  HeadingSection(title: 'Account Setting'),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
