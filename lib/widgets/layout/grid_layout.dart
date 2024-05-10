import 'package:countries/utils/constants/colors.dart';
import 'package:countries/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class SGridLayout extends StatelessWidget {
  const SGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 288,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final darkMode = SHelperFunctions.isDarkMode(context);
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: mainAxisExtent,
          mainAxisSpacing: SSizes.gridViewSpacing,
          crossAxisSpacing: SSizes.gridViewSpacing,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: darkMode ? SColors.grey.withOpacity(1) : SColors.black.withOpacity(1),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0,3)
                )
              ]
            ),
            child: itemBuilder(context, index),
          );
        },);
  }
}
