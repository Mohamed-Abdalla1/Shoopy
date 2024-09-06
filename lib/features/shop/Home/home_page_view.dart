import 'package:flutter/material.dart';
import 'package:shoppy/core/common/widgets/home_page/primary_header_home_page.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderHomePage(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
