import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/core/common/widgets/custom_app_bar.dart';
import 'package:shoppy/core/common/widgets/home_page/primary_header_home_page.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/constants/text_strings.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryHeaderHomePage(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeAppBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.shopping_bag),
          color: TColors.white,
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: TColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('2',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(
                          color: TColors.white,
                          fontSizeFactor: 0.8)),
            ),
          ),
        )
      ],
    );
  }
}
