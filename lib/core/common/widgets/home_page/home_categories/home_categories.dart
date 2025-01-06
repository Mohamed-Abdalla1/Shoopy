import 'package:flutter/material.dart';
import 'package:shoppy/core/common/widgets/home_page/vertical_Image_text.dart';
import 'package:shoppy/core/utils/constants/image_strings.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const VerticalImageText(
            image: TImages.sportIcon,
            title: 'Sports',
          );
        },
      ),
    );
  }
}
