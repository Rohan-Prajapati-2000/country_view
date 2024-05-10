import 'package:countries/utils/constants/colors.dart';
import 'package:countries/utils/constants/sizes.dart';
import 'package:countries/utils/helpers/helper_functions.dart';
import 'package:countries/widgets/custom_shape/containers/circular_container.dart';
import 'package:flutter/material.dart';

import '../model/CountryModel.dart';

class FullDetailsOfCountry extends StatelessWidget {
  const FullDetailsOfCountry({super.key, required this.country});

  final CountryModel country;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: dark ? SColors.darkerGrey : Colors.grey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: SSizes.defaultSpace),
          child: SRoundedContainer(
            width: double.infinity,
            backgroundColor: dark ? SColors.darkerGrey : Colors.grey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(country.flags!.png ?? '',
                          width: 300, height: 300),
                    ],
                  ),
                  const SizedBox(height: SSizes.spaceBtwItems),

                  RowWidget(
                      title: 'Country Name',
                      value: country.name!.common ?? ''),
                  RowWidget(
                      title: 'Capital Name',
                      value:
                          country.capital?.isNotEmpty == true ? country.capital!.first : 'This Country has no Capital...'),
                  RowWidget(title: 'Region', value: '${country.region}'),
                  RowWidget(title: 'Subregion', value: '${country.subregion}'),



                  const SizedBox(height: SSizes.spaceBtwItems),



                  RowWidget(title: 'Currency', value: '${country.currencies}'),
                  // RowWidget(title: 'Currency Name', value: '${country.currencies?[0]}'),
                  // RowWidget(title: 'Symbol', value: '${country.currencies?[0].symbol}'),
                  // RowWidget(title: 'Language', value: '${country.languages[0].name}'),


                  const SizedBox(height: SSizes.spaceBtwItems),



                  RowWidget(
                      title: 'Population', value: '${country.population}'),
                  RowWidget(title: 'Area', value: '${country.area} km²'),

                  RowWidget(title: 'latlang', value: '${country.latlng}'),
                  RowWidget(
                      title: 'Start of Week', value: '${country.startOfWeek}'),



                  const SizedBox(height: SSizes.spaceBtwItems),



                  RowWidget(title: 'Time Zone:', value: '${country.timezones}'),
                  RowWidget(title: 'Status', value: '${country.status}'),
                  RowWidget(title: 'cca3', value: '${country.cca3}'),
                  RowWidget(
                      title: 'Postal Code', value: '${country.postalCode}'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Text(
            "$title: ",
            style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis),
            maxLines: 2,
          ),
        ),
        Expanded(
          flex: 6,
          child: Text(value.toString(),
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(fontSize: 17, overflow: TextOverflow.ellipsis),
              maxLines: 2),
        ),
      ],
    );
  }
}
