import 'package:flutter/material.dart';
import 'package:shoppy/core/common/styles/Tshadow_style.dart';
import 'package:shoppy/core/common/widgets/Rounded/rounded_image.dart';
import 'package:shoppy/core/common/widgets/Rounded/tCircular_container.dart';
import 'package:shoppy/core/common/widgets/Rounded/tRounded_container.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/constants/image_strings.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/helpers/helper_functions.dart';

class ProductVerticalGridview extends StatelessWidget {
  const ProductVerticalGridview({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      child: Center(
        child: Container(
          width: 150,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
              boxShadow: [TshadowStyle.verticalShadow],
              borderRadius: BorderRadius.circular(TSizes.productImageRadius),
              color: dark ? TColors.darkGrey : TColors.white),
          child: Column(
            children: [
              //thubnail , wishList btn , discount tag
              TroundedContainer(
                height: 150,
                padding: const EdgeInsets.all(TSizes.sm),
                backGroundColor: dark ? TColors.dark : TColors.light,
                child: Stack(
                  children: [
                    //thubnail image
                    RoundedImage(imageUrl: TImages.productImage1),
                    //sale tag
                    Positioned(
                      top: 12,
                      child: TroundedContainer(
                        raduis: TSizes.sm,
                        backGroundColor: TColors.secondary.withOpacity(0.8),
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: Text(
                          ' 25% ',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: TColors.black),
                        ),
                        //favourit icon
                        
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
