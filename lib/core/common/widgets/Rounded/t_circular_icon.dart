
import 'package:flutter/material.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/helpers/helper_functions.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    this.height,
    this.width,
    this.size,
    this.backGround,
    required this.iconColor,
    this.icon,
    this.onPressed,
  });

  final double? height, width, size;
  final Color? backGround, iconColor;
  final IconData? icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: backGround != null
                ? backGround!
                : THelperFunctions.isDarkMode(context)
                    ? TColors.black.withOpacity(0.9)
                    : TColors.white.withOpacity(0.9)),
        child: IconButton(
          onPressed: () {},
          icon: Icon(icon),
          color: iconColor,
          iconSize: size,
        ),
      ),
    );
  }
}
