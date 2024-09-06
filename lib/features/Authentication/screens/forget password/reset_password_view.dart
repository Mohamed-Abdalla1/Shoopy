import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/core/utils/constants/image_strings.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/device/device_utility.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon:const  Icon(Iconsax.backward))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //image
              Image(image: AssetImage(TImages.deliveredInPlaneIllustration),width: TDeviceUtils.getScreenWidth(context) *0.6,),
             const SizedBox(height: TSizes.spaceBtwSections,)
              //title &subTitle
              //btn
            ],
          ),
        ),
        
      ),
    );
  }
}
