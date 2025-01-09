import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/core/common/styles/Tshadow_style.dart';
import 'package:shoppy/core/common/widgets/Rounded/rounded_image.dart';
import 'package:shoppy/core/common/widgets/Rounded/tRounded_container.dart';
import 'package:shoppy/core/common/widgets/Rounded/t_circular_icon.dart';
import 'package:shoppy/core/common/widgets/brands/brand_title.dart';
import 'package:shoppy/core/common/widgets/brands/brand_title_with_vrified_icon.dart';
import 'package:shoppy/core/common/widgets/texts/t_product_title_text.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/constants/enums.dart';
import 'package:shoppy/core/utils/constants/image_strings.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/helpers/helper_functions.dart';

class ProductVerticalGridview extends StatelessWidget {
  const ProductVerticalGridview({super.key, this.onTap});
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
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
                      ),
                    ),
                    //favourit icon
                    Positioned(
                        right: 0,
                        top: -0,
                        child: TCircularIcon(
                          width: 40,
                          height: 40,
                          icon: Iconsax.heart5,
                          iconColor: Colors.red,
                        ))
                  ],
                ),
              ),
              //Details
              const SizedBox(
                height: TSizes.sm,
              ),
              Padding(
                padding: const EdgeInsets.only(left: TSizes.sm),
                child: Column(
                  children: [
                    //title
                    const TProductTitleText(
                      title: 'Green Nike Par Shoes ',
                    ),
                    const SizedBox(
                      height: TSizes.sm,
                    ),
                    //subtitle source
                    const TBrandTitleWithVerifiedIcon(
                      title: 'Nike',
                    ),
                    const SizedBox(
                      height: TSizes.sm,
                    ),
                    //price btn
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // price
                        Text(
                          '\$35.5',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        //btn
                        Container(
                          decoration: const BoxDecoration(
                            color: TColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(TSizes.productImageRadius),
                            ),
                          ),
                          child: const SizedBox(
                            height: TSizes.iconLg,
                            width: TSizes.iconLg * 1.1,
                            child: Center(
                              child: Icon(
                                Iconsax.add,
                                color: TColors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
