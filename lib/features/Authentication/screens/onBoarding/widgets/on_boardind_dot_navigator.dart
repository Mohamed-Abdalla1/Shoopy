import 'package:flutter/material.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/device/device_utility.dart';
import 'package:shoppy/core/utils/helpers/helper_functions.dart';
import 'package:shoppy/features/Authentication/controller/onBoarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigator extends StatelessWidget {
  const OnBoardingDotNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigator,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? TColors.white : TColors.dark, dotHeight: 6),
      ),
    );
  }
}
