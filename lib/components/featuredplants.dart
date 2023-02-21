import 'package:flutter/material.dart';

import '../constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeatureplantCard(
            image: "assets/images/bottom_img_1.png",
            press: () {},
          ),
          FeatureplantCard(
            image: "assets/images/bottom_img_2.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeatureplantCard extends StatelessWidget {
  const FeatureplantCard({
    super.key,
    this.image,
    this.press,
  });

  final String? image;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
        margin: EdgeInsets.only(
          bottom: kDefaultPadding / 2,
          top: kDefaultPadding / 2,
          left: kDefaultPadding,
        ),
        height: 185,
        width: size.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(image!), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
