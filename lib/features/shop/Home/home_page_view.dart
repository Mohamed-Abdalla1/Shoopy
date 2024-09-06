import 'package:flutter/material.dart';
import 'package:shoppy/core/utils/constants/colors.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: TColors.borderPrimary,
          padding: const EdgeInsets.all(0),
          child: Stack(
            children: [
              TCircularContainer(
                backGroundColor: TColors.textWhite.withOpacity(0.5),
              )
            ],
          ),
        ),
      ),
    );
  }
}

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
