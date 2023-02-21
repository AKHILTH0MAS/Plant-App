import 'package:flutter/material.dart';

import '../constants.dart';

class PricingCountryName extends StatelessWidget {
  const PricingCountryName({
    super.key,
    required this.country,
    required this.title,
    required this.price,
  });
  final String? country, title;
  final int? price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "$title\n",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: kTextcolor,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    TextSpan(
                      text: country,
                      style: const TextStyle(
                        fontSize: 20,
                        color: kPrimarycolor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Text(
                "\$$price",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: kPrimarycolor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}
