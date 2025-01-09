import 'package:flutter/material.dart';
import 'package:shoppy/core/utils/constants/colors.dart';

class SettingListtile extends StatelessWidget {
  const SettingListtile(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.icon,
      this.onTap,
      this.trailing});
  final String title, subTitle;
  final IconData icon;
  final Function()? onTap;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: TColors.primary,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
