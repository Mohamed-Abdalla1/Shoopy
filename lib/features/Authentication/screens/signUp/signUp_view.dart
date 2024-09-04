import 'package:flutter/material.dart';
import 'package:shoppy/core/common/widgets/divider.dart';
import 'package:shoppy/core/common/widgets/social_buttons.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/constants/text_strings.dart';
import 'package:shoppy/core/utils/helpers/helper_functions.dart';
import 'package:shoppy/features/Authentication/screens/signUp/widgets/signUp_form.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.defaultSpace,
              ),
              //form
              SignUpForm(dark: dark),
              const SizedBox(
                height: TSizes.defaultSpace,
              ),
              //Divider
              TDivider(dark: dark, text: TTexts.orSignUpWith),
              const SizedBox(
                height: TSizes.defaultSpace,
              ),
              //Social btns
            ],
          ),
        ),
      ),
    );
  }
}
