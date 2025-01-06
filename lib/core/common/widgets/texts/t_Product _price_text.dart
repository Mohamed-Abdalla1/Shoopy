import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';

class TProductPriceText extends StatelessWidget {
  const TProductPriceText({
    super.key,
  });
  // final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
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
              bottomRight: Radius.circular(TSizes.productImageRadius),
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
    );
  }
}
