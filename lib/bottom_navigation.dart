import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/helpers/helper_functions.dart';
import 'package:shoppy/features/shop/Home/home_page_view.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = Get.put(NavigateController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          selectedIndex: controller.selectIndex.value,
          onDestinationSelected: (index) =>
              controller.selectIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'WishList'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
          elevation: 0,
          indicatorColor: dark
              ? TColors.white.withOpacity(0.1)
              : TColors.black.withOpacity(0.1),
          backgroundColor: dark ? TColors.black : TColors.white,
        ),
      ),
      body: Obx(() => controller.screens[controller.selectIndex.value]),
    );
  }
}

class NavigateController extends GetxController {
  final Rx<int> selectIndex = 0.obs;
  final dynamic screens = const [
    HomePageView(),
    Text('data'),
    Text('data'),
    Text('data')
  ];
}
