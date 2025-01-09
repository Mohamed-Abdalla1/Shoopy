import 'package:flutter/material.dart';
import 'package:shoppy/core/common/widgets/app%20bar/cart_counter.dart';
import 'package:shoppy/core/common/widgets/app%20bar/custom_app_bar.dart';
import 'package:shoppy/core/common/widgets/brands/t_brand_card.dart';
import 'package:shoppy/core/common/widgets/home_page/product%20grid%20view/gridview_layout.dart';
import 'package:shoppy/core/common/widgets/home_page/search/search_container.dart';
import 'package:shoppy/core/common/widgets/tab%20bar/t_tab_bar.dart';
import 'package:shoppy/core/common/widgets/texts/heading_section.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/constants/image_strings.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/helpers/helper_functions.dart';
import 'package:shoppy/features/shop/Store/widgets/t_category_brand.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                  expandedHeight: 400,
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
                            return TBrandCard(
                              showBorder: true,
                              onTap: () {},
                            );
                          },
                        )
                      ],
                    ),
                  ),
                  bottom: const TTabBar(
                    tabs: [
                      Tab(
                        child: Text('Cloths'),
                      ),
                      Tab(child: Text('Sports')),
                      Tab(child: Text('Cosmetics')),
                      Tab(child: Text('Furniture')),
                      Tab(child: Text('Electoincs')),
                    ],
                  ),
                )
              ];
            },
            body: const TabBarView(
              children: [
                TCategoryBrand(
                  images: [
                    TImages.productImage3,
                    TImages.productImage4,
                    TImages.productImage5,
                  ],
                ),
                TCategoryBrand(
                  images: [
                    TImages.productImage22,
                    TImages.productImage9,
                    TImages.productImage10,
                  ],
                ),
                TCategoryBrand(
                  images: [
                    TImages.productImage24,
                    TImages.productImage25,
                    TImages.productImage26,
                  ],
                ),
                TCategoryBrand(
                  images: [
                    TImages.productImage35,
                    TImages.productImage36,
                    TImages.productImage40,
                  ],
                ),
                TCategoryBrand(
                  images: [
                    TImages.productImage52,
                    TImages.productImage12,
                    TImages.productImage14,
                  ],
                )
              ],
            )),
      ),
    );
  }
}
