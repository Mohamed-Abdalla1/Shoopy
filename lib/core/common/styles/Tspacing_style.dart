import 'package:flutter/material.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';

class TSpacingStyle {
  static EdgeInsetsGeometry paddingWithAppBarHeight = const EdgeInsets.only(
    top: TSizes.appBarHeight,
    bottom: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
    left: TSizes.defaultSpace,
  );
}
