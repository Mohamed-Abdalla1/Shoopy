import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/bottom_navigation.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/constants/text_strings.dart';
import 'package:shoppy/features/Authentication/screens/forget%20password/forget_password.dart';
import 'package:shoppy/features/Authentication/screens/signUp/signUp_view.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            //Email & Password
            TextFormField(
              decoration: const InputDecoration(
                prefix: Icon(
                  Iconsax.direct_right,
                ),
                labelText: TTexts.email,
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefix: Icon(
                  Iconsax.password_check,
                ),
                suffix: Icon(Iconsax.eye_slash),
                labelText: TTexts.password,
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields / 2,
            ),
            //Remmber me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TTexts.rememberMe),
                  ],
                ),
                TextButton(
                    onPressed: () => Get.to(const ForgetPasswordView()),
                    child: const Text(TTexts.forgetPassword))
              ],
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.off(const BottomNavigation()),
                  child: const Text(TTexts.signIn)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {
                    Get.to(const SignUpView());
                  },
                  child: const Text(TTexts.createAccount)),
            ),
          ],
        ),
      ),
    );
  }
}
