import 'package:flutter/material.dart';
import 'package:shoppy/core/common/widgets/Rounded/tRounded_container.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/helpers/helper_functions.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.boxFit = BoxFit.cover,
    required this.image,
    this.overlayColor,
    this.backgroundColor = false,
    this.isNetworkImage = false,
    this.padding = TSizes.sm,
  });
  final double width, height, padding;
  final String image;
  final BoxFit boxFit;
  final Color? overlayColor;
  final bool backgroundColor;
  final bool isNetworkImage;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: backgroundColor ?? dark ? TColors.black : TColors.textWhite,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Image(
          image: isNetworkImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
          // color: dark ? TColors.white : TColors.black,
          fit: boxFit,
        ),
      ),
    );
  }
}
