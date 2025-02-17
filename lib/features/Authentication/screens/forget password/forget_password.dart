import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/core/common/styles/Tspacing_style.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/constants/text_strings.dart';
import 'package:shoppy/features/Authentication/screens/forget%20password/reset_password_view.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Heading
              Text(TTexts.forgetPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(TTexts.forgetPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              //Text Field
              TextFormField(
                decoration: const InputDecoration(
                    labelText: TTexts.email,
                    prefixIcon: Icon(Iconsax.direct_right)),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              //submit button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(const ResetPasswordView()),
                    child: const Text(TTexts.submit)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
