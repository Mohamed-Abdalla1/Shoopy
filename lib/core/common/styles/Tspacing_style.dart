import 'package:flutter/material.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/device/device_utility.dart';

class TSpacingStyle {
  static EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: TDeviceUtils.getAppBarHeight(),
    bottom: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
    left: TSizes.defaultSpace,
  );
}
