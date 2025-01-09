
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppy/core/common/widgets/Rounded/t_circular_image.dart';
import 'package:shoppy/core/utils/constants/colors.dart';
import 'package:shoppy/core/utils/constants/image_strings.dart';

class TUserProfile extends StatelessWidget {
  const TUserProfile({
    super.key, required this.title, required this.email,
  });
  final String title, email;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
        image: TImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.white),
      ),
      subtitle: Text(
        email,
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Iconsax.edit,
            color: TColors.white,
          )),
    );
  }
}
