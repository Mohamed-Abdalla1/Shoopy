import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/core/common/widgets/Rounded/rounded_image.dart';
import 'package:shoppy/core/common/widgets/Rounded/tCircular_container.dart';
import 'package:shoppy/core/common/widgets/home_page/product%20grid%20view/gridview_layout.dart';
import 'package:shoppy/core/common/widgets/texts/heading_section.dart';
import 'package:shoppy/core/common/widgets/home_page/app%20bar/home_app_bar.dart';
import 'package:shoppy/core/common/widgets/home_page/home_categories/home_categories.dart';
import 'package:shoppy/core/common/widgets/home_page/primary_header_home_page.dart';
import 'package:shoppy/core/common/widgets/home_page/product%20grid%20view/product_vertical_gridview.dart';
import 'package:shoppy/core/common/widgets/home_page/search/search_container.dart';
import 'package:shoppy/core/common/widgets/promo_slider.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/constants/text_strings.dart';
import 'package:shoppy/core/utils/helpers/helper_functions.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PrimaryHeaderHomePage(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Home App Bar
                  HomeAppBar(),

                  //Search bar
                  SearchContainer(),
                  SizedBox(
                    height: TSizes.sm,
                  ),
                  //Horizontal List view
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        // Heading section
                        HeadingSection(
                          textColor: TColors.white,
                          title: 'Popular Categories',
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        //Horizontal List view
                        HomeCategories()
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //promo slider
            const Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.spaceBtwSections),
              child: PromoSlider(),
            ),
            const SizedBox(
              height: TSizes.lg,
            ),
            Padding(
              padding: const EdgeInsets.only(left: TSizes.md),
              child: HeadingSection(
                title: TTexts.popularProducts,
                textColor: dark ? TColors.white : TColors.black,
                showActionButton: true,
              ),
            ),
            TGridViewLayout(
              itemBuilder: (context, index) {
                return const ProductVerticalGridview();
              },
              itemCount: 6,
            )

            //
          ],
        ),
      ),
    );
  }
}
