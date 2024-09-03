
import 'package:flutter/material.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/constants/image_strings.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';

class SocialBtns extends StatelessWidget {
  const SocialBtns({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Image(
                width: TSizes.iconMd,
                height: TSizes.iconMd,
                image: AssetImage(TImages.google),
              ),
            ),
          ),
          const SizedBox(
            width: TSizes.sm,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Image(
                width: TSizes.iconMd,
                height: TSizes.iconMd,
                image: AssetImage(TImages.facebook),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
