
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/device/device_utility.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Container(
          padding: const EdgeInsets.all(TSizes.md),
          width: TDeviceUtils.getScreenWidth(context),
          decoration: BoxDecoration(
              color: TColors.white,
              borderRadius:
                  BorderRadius.circular(TSizes.cardRadiusLg),
              border: Border.all(color: TColors.grey)),
          child: Row(
            children: [
              //Icon
              const Icon(
                Iconsax.search_normal,
                color: TColors.darkGrey,
              ),
              //
    
              const SizedBox(width: TSizes.spaceBtwItems),
              //Text
              Text('Search in store',
                  style: Theme.of(context).textTheme.bodySmall)
            ],
          ),
        ),
      ),
    );
  }
}