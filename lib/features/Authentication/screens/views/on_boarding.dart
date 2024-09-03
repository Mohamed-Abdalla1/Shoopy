import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:shoppy/core/utils/constants/image_strings.dart';
import 'package:shoppy/core/utils/constants/text_strings.dart';
import 'package:shoppy/features/Authentication/controller/onBoarding_controller.dart';
import 'package:shoppy/features/Authentication/screens/widgets/on_boardind_dot_navigator.dart';
import 'package:shoppy/features/Authentication/screens/widgets/on_boarding_button.dart';
import 'package:shoppy/features/Authentication/screens/widgets/on_boarding_page.dart';
import 'package:shoppy/features/Authentication/screens/widgets/on_boarding_skip.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        //HorizantalScrollable pages
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.currentPageIndex,
            children: const [
              OnBoardingPage(
                image: AssetImage(TImages.onBoardingImage1),
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: AssetImage(TImages.onBoardingImage2),
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: AssetImage(TImages.onBoardingImage3),
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          //skip Button
          const OnBoardingSkip(),
          //dot navigator
          const OnBoardingDotNavigator(),
          // circular button
          const OnBoardingButton()
        ],
      ),
    );
  }
}
