import 'package:countries/utils/constants/colors.dart';
import 'package:countries/utils/constants/sizes.dart';
import 'package:countries/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_shape/containers/circular_container.dart';
import '../../widgets/images/s_rounded_image.dart';

class ContinentWithName extends StatelessWidget {
  const ContinentWithName({
    super.key,
    required this.continentName,
    required this.imageUrl,
    required this.onTap,
  });

  final String continentName;
  final String imageUrl;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: SRoundedContainer(
        height: 300,
        radius: 15,
        backgroundColor: dark ? SColors.darkerGrey : SColors.grey,
        margin: EdgeInsets.symmetric(vertical: SSizes.md / 2),
        child: Stack(
          children: [
            Center(
              child: SRoundedImage(
                imageUrl: imageUrl,
                boxFit: BoxFit.scaleDown,
              ),
            ),
            Positioned(
                top: 10,
                left: 10,
                child: Text(
                  continentName,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
