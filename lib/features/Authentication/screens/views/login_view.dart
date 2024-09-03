import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
import 'package:shoppy/core/common/styles/Tspacing_style.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/constants/text_strings.dart';
import 'package:shoppy/core/utils/helpers/helper_functions.dart';
import 'package:shoppy/features/Authentication/screens/widgets/login_form.dart';
import 'package:shoppy/features/Authentication/screens/widgets/login_header.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Header
              LoginHeader(dark: dark),
              //Form
              const LoginForm(),
              
            ],
          ),
        ),
      ),
    );
  }
}
