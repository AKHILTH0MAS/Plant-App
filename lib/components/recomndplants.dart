import 'package:flutter/material.dart';
import 'package:speed/screens/details/components/detailpage.dart';

import '../constants.dart';

class RecommndPlant extends StatelessWidget {
  const RecommndPlant({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RcommndPlantCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Detailscreen(),
                  ));
            },
          ),
          RcommndPlantCard(
            image: "assets/images/image_2.png",
            title: "Angelica",
            country: "America",
            price: 540,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Detailscreen(),
                  ));
            },
          ),
          RcommndPlantCard(
            image: "assets/images/image_3.png",
            title: "Histalica",
            country: "India",
            price: 670,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Detailscreen(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}

class RcommndPlantCard extends StatelessWidget {
  const RcommndPlantCard({
    super.key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  });

  final String? image, title, country;
  final int? price;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding / 2.5,
      ),
      width: size.width * 0.4,
      child: Column(children: [
        Image.asset(image!),
        GestureDetector(
          onTap: press,
          child: Container(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 50,
                  offset: const Offset(0, 10),
                  color: kPrimarycolor.withOpacity(0.23),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "$title\n",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      TextSpan(
                        text: country,
                        style: TextStyle(
                          color: kTextcolor.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  "\$$price",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: kPrimarycolor),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
