import 'package:flutter/material.dart';
import 'package:shoppy/core/common/widgets/brands/t_brand_show_case.dart';
import 'package:shoppy/core/common/widgets/home_page/product%20grid%20view/gridview_layout.dart';
import 'package:shoppy/core/common/widgets/home_page/product%20grid%20view/product_vertical_gridview.dart';
import 'package:shoppy/core/common/widgets/texts/heading_section.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/constants/image_strings.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';

class TCategoryBrand extends StatelessWidget {
  const TCategoryBrand({
    super.key, required this.images,
  });
 final List<String> images;
  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(children: [
              //brands
               TBrandShowCase(
                images:images,
                // gridlayout
              ),
              const HeadingSection(
                title: 'You Might Like',
                showActionButton: true,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TGridViewLayout(
                itemCount: 4,
                itemBuilder: (p0, p1) {
                  return const ProductVerticalGridview();
                },
              )
            ]),
          ),
        ]);
  }
}
