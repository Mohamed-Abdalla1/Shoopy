
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/constants/sizes.dart';
import 'package:shoppy/core/utils/constants/text_strings.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.sm,
        ),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.email, prefixIcon: Icon(Icons.email)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        Row(
          children: [
            SizedBox(
              width: 12,
              height: 12,
              child: Checkbox(value: true, onChanged: (onChanged) {}),
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: ('  ${TTexts.iAgreeTo}'),
                  style: Theme.of(context).textTheme.labelSmall),
              TextSpan(
                  text: (' ${TTexts.privacyPolicy} '),
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(
                        color: dark ? TColors.white : TColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            dark ? TColors.white : TColors.primary,
                      )),
              TextSpan(
                text: ('${TTexts.and} '),
                style: Theme.of(context).textTheme.labelSmall,
              ),
              TextSpan(
                text: (TTexts.termsOfUse),
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? TColors.white : TColors.primary,
                    ),
              ),
            ])),
          ],
        ),
        const SizedBox(
          height: TSizes.sm,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {},
              child: const Text(TTexts.createAccount)),
        )
      ],
    );
  }
}
