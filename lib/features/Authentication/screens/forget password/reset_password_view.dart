import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppy/core/utils/constants/image_strings.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/constants/text_strings.dart';
import 'package:shoppy/core/utils/device/device_utility.dart';
import 'package:shoppy/features/Authentication/screens/login/login_view.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //image
              Image(
                image: const AssetImage(TImages.deliveredInPlaneIllustration),
                width: TDeviceUtils.getScreenWidth(context) * 0.6,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              //title & subTitle
              Text(
                TTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Text(
                TTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              //btn
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(const LoginView()),
                    child: const Text(TTexts.done)),
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () => Get.back(),
                    child: const Text(TTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
