import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/constants/text_strings.dart';
import 'package:shoppy/features/Authentication/screens/forget%20password/reset_password_view.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Heading
              Text(TTexts.forgetPasswordTitle , style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(TTexts.forgetPasswordSubTitle , style: Theme.of(context).textTheme.labelMedium),
              const SizedBox(height: TSizes.spaceBtwSections,),
              //Text Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: TTexts.email,
                  prefixIcon:  Icon(Iconsax.direct_right)
                ),
              ),
              //submit button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: ()=>Get.off(const ResetPasswordView()), child:const  Text(TTexts.submit)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
