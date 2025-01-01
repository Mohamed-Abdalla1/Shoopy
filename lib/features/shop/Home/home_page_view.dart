import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/core/common/widgets/home_page/app%20bar/home_app_bar.dart';
import 'package:shoppy/core/common/widgets/home_page/primary_header_home_page.dart';
import 'package:shoppy/core/common/widgets/home_page/search/search_container.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/device/device_utility.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            PrimaryHeaderHomePage(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Home App Bar
                    HomeAppBar(),

                  //Search bar
                  SearchContainer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

