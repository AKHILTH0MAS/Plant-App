import 'package:flutter/material.dart';

import '../constants.dart';
import 'featuredplants.dart';
import 'headerwithsearch.dart';
import 'recomndplants.dart';
import 'titlewithmorebttn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBar(size: size),
          TitleWithButton(
            title: "Recommended",
            press: () {},
          ),
          const RecommndPlant(),
          TitleWithButton(
            title: "Featured Plants",
            press: () {},
          ),
          const FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
