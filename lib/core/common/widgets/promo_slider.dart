import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppy/core/common/widgets/Rounded/rounded_image.dart';
import 'package:shoppy/core/common/widgets/Rounded/tCircular_container.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/constants/image_strings.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/features/shop/controllers/home_contraoler.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: [
            RoundedImage(
              imageUrl: TImages.promoBanner1,
            ),
            RoundedImage(
              imageUrl: TImages.promoBanner2,
            ),
            RoundedImage(
              imageUrl: TImages.promoBanner3,
            ),
          ],
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, reason) =>
                controller.updatePageIndicator(index),
          ),
        ),
        SizedBox(
          height: TSizes.sm,
        ),
        Center(
          child: Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i = 0; i <= 2; i++)
                    TCircularContainer(
                        margin: EdgeInsets.only(right: 10),
                        width: 20,
                        height: 4,
                        backGroundColor:
                            controller.carouselCurrentController.value == i
                                ? TColors.warning
                                : TColors.grey)
                ],
              )),
        )
      ],
    );
  }
}
