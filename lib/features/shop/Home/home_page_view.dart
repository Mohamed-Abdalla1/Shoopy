import 'package:flutter/material.dart';
import 'package:shoppy/core/common/widgets/curved_edges.dart';
import 'package:shoppy/core/common/widgets/tCircular_container.dart';
import 'package:shoppy/core/utils/constants/colors.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ClipPath(
          clipper: TCustomCurvedEdges(),
          child: SizedBox(
            height: 400,
            child: Container(
              color: TColors.primary,
              padding: const EdgeInsets.all(0),
              child: Stack(
                children: [
                  Positioned(
                    top: -150,
                    right: -300,
                    child: TCircularContainer(
                      backGroundColor: TColors.textWhite.withOpacity(0.5),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    right: -300,
                    child: TCircularContainer(
                      backGroundColor: TColors.textWhite.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
