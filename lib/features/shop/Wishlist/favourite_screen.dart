import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/core/common/widgets/Rounded/t_circular_icon.dart';
import 'package:shoppy/core/common/widgets/app%20bar/custom_app_bar.dart';
import 'package:shoppy/core/common/widgets/home_page/product%20grid%20view/gridview_layout.dart';
import 'package:shoppy/core/common/widgets/home_page/product%20grid%20view/product_vertical_gridview.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/helpers/helper_functions.dart';
import 'package:shoppy/features/shop/Home/home_page_view.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          showBackArrow: false,
          title: Text(
            'WishList',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCircularIcon(
                icon: Iconsax.add,
                onPressed: () => Get.to(const HomePageView()),
                iconColor: THelperFunctions.isDarkMode(context)
                    ? TColors.white
                    : TColors.dark),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridViewLayout(
                itemCount: 5,
                itemBuilder: (p0, p1) {
                  return const ProductVerticalGridview();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
