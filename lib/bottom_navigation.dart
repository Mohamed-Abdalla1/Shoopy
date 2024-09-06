import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
    );
  }
}

class NavigateController extends GetxController {
  final Rx<int> selectIndex = 0.obs;
  final screens = [];
}
