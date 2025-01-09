import 'package:flutter/material.dart';
import 'package:shoppy/core/common/widgets/Rounded/tRounded_container.dart';
import 'package:shoppy/core/common/widgets/Rounded/t_circular_image.dart';
import 'package:shoppy/core/common/widgets/app%20bar/cart_counter.dart';
import 'package:shoppy/core/common/widgets/app%20bar/custom_app_bar.dart';
import 'package:shoppy/core/common/widgets/brands/brand_title_with_vrified_icon.dart';
import 'package:shoppy/core/common/widgets/home_page/product%20grid%20view/gridview_layout.dart';
import 'package:shoppy/core/common/widgets/home_page/search/search_container.dart';
import 'package:shoppy/core/common/widgets/texts/heading_section.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/constants/image_strings.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: false,
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CartCounterIcon(onPressed: () {}, color: TColors.primary),
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                automaticallyImplyLeading: false,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 2,
                      ),
                      //Search container
                      const SearchContainer(
                        padding: 0,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      //featured brands
                      HeadingSection(
                        title: 'Featured Brands',
                        textColor: THelperFunctions.isDarkMode(context)
                            ? TColors.white
                            : TColors.black,
                        onPressed: () {},
                        showActionButton: true,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      TGridViewLayout(
                        mainAxisExtent: 80,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return TroundedContainer(
                            padding: const EdgeInsets.all(TSizes.sm),
                            showBorder: true,
                            backGroundColor: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: TCircularImage(
                                    image: TImages.clothIcon,
                                    overlayColor:
                                        THelperFunctions.isDarkMode(context)
                                            ? TColors.white
                                            : TColors.black,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const TBrandTitleWithVerifiedIcon(
                                          title: 'Nike'),
                                      Text(
                                        '265 Products',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              )
            ];
          },
          body: Column()),
    );
  }
}
