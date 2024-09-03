import 'package:flutter/material.dart';
import 'package:shoppy/core/utils/constants/image_strings.dart';
import 'package:shoppy/core/utils/constants/text_strings.dart';
import 'package:shoppy/features/Authentication/screens/widgets/on_boarding_page.dart';


class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        //HorizantalScrollable pages
        children: [
          PageView(
            children: const[
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
          )
        ],
        //skip Button
        //dot navigator
        // circular button
      ),
    );
  }
}

