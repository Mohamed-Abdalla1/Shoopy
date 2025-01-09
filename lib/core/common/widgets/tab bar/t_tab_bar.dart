
import 'package:flutter/material.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/device/device_utility.dart';
import 'package:shoppy/core/utils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({
    super.key,
    required this.tabs,
  });
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
          tabAlignment: TabAlignment.start,
          isScrollable: true,
          indicatorColor: TColors.primary,
          labelColor: dark ? TColors.white : TColors.primary,
          unselectedLabelColor: TColors.darkGrey,
          tabs: tabs),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}