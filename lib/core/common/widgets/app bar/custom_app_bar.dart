import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/device/device_utility.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      this.title,
      this.showBackArrow = true,
      this.leadingIcon,
      this.leadingOnPressed,
      this.actions});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final void Function()? leadingOnPressed;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Iconsax.arrow_left))
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed, icon: Icon(leadingIcon))
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
