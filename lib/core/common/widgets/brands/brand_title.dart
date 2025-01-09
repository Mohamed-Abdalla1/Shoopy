
import 'package:flutter/material.dart';
import 'package:shoppy/core/utils/constants/enums.dart';

class TBrandTitle extends StatelessWidget {
  const TBrandTitle({
    super.key,
    required this.title,
    this.maxlines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,  this.TextColor,
  });
  final String title;
  final int maxlines;
  final Color? TextColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: brandTextSize == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: TextColor)
          : brandTextSize == TextSizes.medium
              ? Theme.of(context).textTheme.labelLarge!.apply(color: TextColor)
              : brandTextSize == TextSizes.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: TextColor)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: TextColor),
      overflow: TextOverflow.ellipsis,
      maxLines: maxlines,
      textAlign: textAlign,
    );
  }
}
