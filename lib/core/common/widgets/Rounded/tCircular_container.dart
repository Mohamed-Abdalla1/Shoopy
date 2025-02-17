import 'package:flutter/material.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.raduis = 400,
    this.padding = 0,
    this.backGroundColor = TColors.white,
    this.child,
    this.margin,
    this.borderColor = TColors.borderPrimary,
    this.showBorder = false,
  });
  final double width, height, raduis, padding;
  final Color? backGroundColor;
  final Color borderColor;
  final Widget? child;
  final bool showBorder;
  final EdgeInsetsGeometry? margin;
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
    );
  }
}
