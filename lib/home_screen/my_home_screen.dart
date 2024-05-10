import 'package:countries/utils/constants/image_strings.dart';
import 'package:countries/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../continent_country_details_screen/continent_countries_details_screen.dart';
import 'widgets/continents_with_name.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: SSizes.sm),
          child: Column(
            children: [
              ContinentWithName(continentName: 'Asia', imageUrl: SImage.asia, onTap: () => Get.to(() => ContinentCountriesDetailsScreen(continentName: "Asia"))),
              ContinentWithName(continentName: 'Europe', imageUrl: SImage.europe, onTap: () => Get.to(() => ContinentCountriesDetailsScreen(continentName: 'Europe'))),
              ContinentWithName(continentName: 'Australia', imageUrl: SImage.australia, onTap: () => Get.to(() => ContinentCountriesDetailsScreen(continentName: 'Oceania'))),
              ContinentWithName(continentName: 'Africa', imageUrl: SImage.africa, onTap: () => Get.to(() => ContinentCountriesDetailsScreen(continentName: 'Africa'))),
              ContinentWithName(continentName: 'North America', imageUrl: SImage.north, onTap: () => Get.to(() => ContinentCountriesDetailsScreen(continentName: 'North America'))),
              ContinentWithName(continentName: 'South America', imageUrl: SImage.south, onTap: () => Get.to(() => ContinentCountriesDetailsScreen(continentName: 'South America'))),
              ContinentWithName(continentName: 'Antarctica', imageUrl: SImage.antarctica, onTap: () => Get.to(() => ContinentCountriesDetailsScreen(continentName: 'Antarctica'))),
            ],
          ),
        ),
      ),
    );
  }
}
