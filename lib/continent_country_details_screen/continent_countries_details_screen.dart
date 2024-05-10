import 'dart:convert';
import 'dart:io';
import 'package:countries/full_details_of_countries_screen/full_details_of_screen.dart';
import 'package:countries/utils/constants/image_strings.dart';
import 'package:countries/utils/constants/sizes.dart';
import 'package:countries/utils/popups/loaders.dart';
import 'package:countries/widgets/custom_shape/containers/circular_container.dart';
import 'package:countries/widgets/custom_shape/curved_edges/curved_edge_widget.dart';
import 'package:countries/widgets/layout/grid_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:http/http.dart' as http;
import '../model/CountryModel.dart';

class ContinentCountriesDetailsScreen extends StatefulWidget {
  final String continentName;

  const ContinentCountriesDetailsScreen(
      {super.key, required this.continentName});

  @override
  State<ContinentCountriesDetailsScreen> createState() =>
      _ContinentCountriesDetailsScreenState();
}

class _ContinentCountriesDetailsScreenState
    extends State<ContinentCountriesDetailsScreen> {
  final List<CountryModel> countryList = [];
  late String searchQuery = '';

  @override
  void initState() {
    super.initState();
    fetchCountriesDetails();
  }

  Future<void> fetchCountriesDetails() async {
    try {
      final response =
          await http.get(Uri.parse('https://restcountries.com/v3.1/all'));

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        final List<CountryModel> countries = [];
        for (var i in data) {
          List<String>? continents = i['continents'] != null ? i['continents'].cast<String>() : [];
          if (continents!.contains(widget.continentName)) {
            countries.add(CountryModel.fromJson(i));
          }
        }
        setState(() {
          countryList.addAll(countries);
        });
      } else if(response.statusCode == 404){
        SLoaders.errorSnackBar(title: 'API endpoint not found');
      } else if(response.statusCode == 500){
        SLoaders.errorSnackBar(title: 'Server Error');
      } else {
        SLoaders.errorSnackBar(title: 'Failed to load data');
      }
    } on SocketException catch (_) {
      SLoaders.errorSnackBar(title: "No Internet");
    } on FormatException catch (_) {
      SLoaders.errorSnackBar(title: 'Invalid API response');
    } catch (e) {
      SLoaders.errorSnackBar(title: 'Error $e');
    }
  }

  List<CountryModel> getFilteredCountry(){
    try{
      List<CountryModel> filteredCountries = [];
      if(searchQuery.isEmpty){
        return countryList;
      } else{
        for (var country in countryList){
          if(country.name!.common!.toLowerCase().contains(searchQuery.toLowerCase())){
            filteredCountries.add(country);
          }
        }
        if(filteredCountries.isEmpty){
          SLoaders.warningSnackBar(title: 'No Country Found');
        }
      }
      return filteredCountries;
    } catch (e) {
      SLoaders.errorSnackBar(title: "Error Occurred $e");
      return [];
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SCurvedEdgeWidget(child: Container(
                color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.only(left: SSizes.defaultSpace, right: SSizes.defaultSpace, top: SSizes.defaultSpace, bottom: SSizes.defaultSpace*1.8),
                  child:

                  TextField(
                    onChanged: (value) {
                      setState(() {
                        searchQuery = value;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: 'Search for a country',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      prefixIcon: IconButton(
                        onPressed: () {
                          setState(() {});
                        },
                        icon: const Icon(Icons.search, color: Colors.black,),
                      ),
                    ),
                  ),

                ),
              )),

              SizedBox(height: SSizes.spaceBtwItems),

              countryList.isEmpty
                  ? const Column(
                      children: [
                        CircularProgressIndicator(),
                        Text('Loading...')
                      ],
                    )
                  : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: SSizes.defaultSpace/2),
                    child: SGridLayout(
                        mainAxisExtent: 230,
                        itemCount: getFilteredCountry().length,
                        itemBuilder: (context, index) {
                          var country = getFilteredCountry()[index];
                          return GestureDetector(
                            /// OnTap
                            onTap: () {
                              var country = getFilteredCountry()[index];
                              Get.to(() => FullDetailsOfCountry(country: country));
                            },

                            child: SRoundedContainer(
                              backgroundColor: Colors.grey,
                              borderColor: Colors.blue,
                              radius: 5,
                              showBorder: false,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    /// Countries Flag
                                    Image.network(country.flags!.png ?? '',
                                        width: 100, height: 100),
                                    const SizedBox(
                                        height: SSizes.spaceBtwItems / 2),
                                    SizedBox(
                                      height: 25,
                                      child: Row(
                                        children: [
                                          const Image(
                                              image: AssetImage(SImage.country)),
                                          const SizedBox(
                                              width: SSizes.spaceBtwItems / 2),

                                          /// Countries Name
                                          Expanded(
                                            child: Text(
                                              country.name!.common ?? '',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!.copyWith(fontWeight: FontWeight.bold),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                        height: SSizes.spaceBtwItems / 2),
                                    SizedBox(
                                      height: 25,
                                      child: Row(
                                        children: [
                                          const Icon(Iconsax.building),
                                          const SizedBox(
                                              width: SSizes.spaceBtwItems / 2),
                                          Expanded(
                                            child: Text(
                                              /// If Country has their own Capital then show that otherwise show => This Country has no Capital
                                              country.capital?.isNotEmpty == true
                                                  ? country.capital!.first
                                                  : 'This Country has no Capital...',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!.copyWith(fontWeight: FontWeight.bold),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                        height: SSizes.spaceBtwItems / 2),
                                    SizedBox(
                                      height: 25,
                                      child: Row(
                                        children: [
                                          const Icon(Iconsax.people),
                                          const SizedBox(
                                              width: SSizes.spaceBtwItems / 2),

                                          /// Countries Population
                                          Expanded(
                                            child: Text(
                                              country.population.toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!.copyWith(fontWeight: FontWeight.bold),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
