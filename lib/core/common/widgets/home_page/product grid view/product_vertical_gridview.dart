import 'package:flutter/material.dart';
import 'package:shoppy/core/common/styles/Tshadow_style.dart';

class ProductVerticalGridview extends StatelessWidget {
  const ProductVerticalGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TshadowStyle.verticalShadow]
        ),
      ),
    );
  }
}