import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shoppy/core/utils/constants/image_strings.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/constants/text_strings.dart';
import 'package:shoppy/core/utils/device/device_utility.dart';
import 'package:shoppy/features/Authentication/screens/login/login_view.dart';
import 'package:shoppy/features/Authentication/screens/signUp/succcess_view.dart';

class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({super.key});

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
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //image
              Image(
                image: const AssetImage(TImages.deliveredEmailIllustration),
                width: TDeviceUtils.getScreenWidth(context) * 0.6,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              //title & subTitle
              Text(
                TTexts.confirmEmail,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Text(
                'Mopoooo@gmail.com',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(
                TTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelLarge,
              ),
               const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              //Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(const SucccessView()),
                    child: const Text(TTexts.tContinue)),
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(TTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
