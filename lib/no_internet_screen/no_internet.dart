import 'package:countries/utils/constants/image_strings.dart';
import 'package:countries/utils/helpers/helper_functions.dart';
import 'package:countries/widgets/loaders/animation_loader.dart';
import 'package:flutter/material.dart';

class NoInternetScreen extends StatelessWidget{
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Center(child: Text('No Internet'))
      // SAnimationLoaderWidget(text: "Oops", animation: dark ? SImage.nightAnimation : SImage.dayAnimation),
    );
  }

}