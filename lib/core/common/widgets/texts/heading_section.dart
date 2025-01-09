import 'package:flutter/material.dart';
import 'package:shoppy/core/utils/constants/colors.dart';

class HeadingSection extends StatelessWidget {
  const HeadingSection({
    super.key,
    required this.title,
    required this.textColor,
    this.showActionButton = false,
    this.onPressed,
    this.btnTitle = 'View ALL',
  });
  final String title;
  final Color textColor;
  final bool showActionButton;
  final void Function()? onPressed;
  final String btnTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(
                color: textColor,
              ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
              onPressed: onPressed,
              child: Text(
                btnTitle,
                style: const TextStyle(
                  color: TColors.darkGrey,
                ),
              ))
      ],
    );
  }
}
