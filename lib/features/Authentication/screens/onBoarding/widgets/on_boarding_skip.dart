import 'package:flutter/material.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/constants/text_strings.dart';
import 'package:shoppy/core/utils/device/device_utility.dart';
import 'package:shoppy/features/Authentication/controller/onBoarding_controller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Controller = OnboardingController.instance;
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton.icon(
            onPressed: () {
              Controller.skipPage();
            },
            label: const Text(TTexts.skip)));
  }
}
