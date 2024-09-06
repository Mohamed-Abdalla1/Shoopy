
import 'package:flutter/material.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.raduis = 400,
    this.padding = 0,
    this.backGroundColor,
    this.child,
  });
  final double width, height, raduis, padding;
  final Color? backGroundColor;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(raduis),
        color: backGroundColor,
      ),
    );
  }
}
