import 'package:flutter/material.dart';
import 'package:shoppy/core/common/widgets/Rounded/tRounded_container.dart';
import 'package:shoppy/core/common/widgets/brands/t_brand_card.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/helpers/helper_functions.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key,
    required this.images,
  });
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return TroundedContainer(
      showBorder: true,
      backGroundColor: Colors.transparent,
      borderColor: TColors.darkGrey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          const TBrandCard(showBorder: true),
          Row(
              children: images
                  .map((image) => brandTapProductImage(image, context))
                  .toList()),
        ],
      ),
    );
  }
}

Widget brandTapProductImage(String image, BuildContext context) {
  return Expanded(
    child: TroundedContainer(
      height: 100,
      backGroundColor: THelperFunctions.isDarkMode(context)
          ? TColors.darkGrey
          : TColors.light,
      margin: const EdgeInsets.symmetric(
          horizontal: TSizes.xs, vertical: TSizes.sm),
      padding: const EdgeInsets.all(TSizes.sm),
      child: Image(
        height: 50,
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    ),
  );
}
