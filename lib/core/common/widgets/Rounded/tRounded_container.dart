import 'package:flutter/material.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';

class TroundedContainer extends StatelessWidget {
  const TroundedContainer({
    super.key,
    this.width,
    this.height,
    this.raduis = TSizes.borderRadiusLg,
    this.padding,
    this.backGroundColor = TColors.white,
    this.child,
    this.margin,
    this.borderColor = TColors.borderPrimary,
    this.showBorder = false,
  });
  final double? width, height;
  final double raduis;
  final Color? backGroundColor;
  final Color borderColor;
  final Widget? child;
  final bool showBorder;
  final EdgeInsetsGeometry? margin, padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(raduis),
          color: backGroundColor,
          border: showBorder ? Border.all(color: borderColor) : null),
      child: child,
    );
  }
}
