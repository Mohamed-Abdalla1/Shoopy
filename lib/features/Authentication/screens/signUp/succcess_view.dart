import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppy/core/common/styles/Tspacing_style.dart';
import 'package:shoppy/core/utils/constants/image_strings.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/constants/text_strings.dart';
import 'package:shoppy/core/utils/device/device_utility.dart';
import 'package:shoppy/features/Authentication/screens/login/login_view.dart';

class SucccessView extends StatelessWidget {
  const SucccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(const LoginView()),
              icon: const Icon(Icons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              //image
              Image(
                image: const AssetImage(TImages.staticSuccessIllustration),
                width: TDeviceUtils.getScreenWidth(context) * 0.6,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              //title & subTitle
              Text(
                TTexts.yourAccountCreatedTitle,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Text(
                TTexts.yourAccountCreatedSubTitle,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              //Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.offAll(const LoginView()),
                    child: const Text(TTexts.tContinue)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
