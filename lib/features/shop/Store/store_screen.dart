import 'package:flutter/material.dart';
import 'package:shoppy/core/common/widgets/app%20bar/cart_counter.dart';
import 'package:shoppy/core/common/widgets/app%20bar/custom_app_bar.dart';
import 'package:shoppy/core/utils/constants/colors.dart';

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
    );
  }
}
