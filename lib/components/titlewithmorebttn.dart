import 'package:flutter/material.dart';

import '../constants.dart';

class TitleWithButton extends StatelessWidget {
  const TitleWithButton({
    this.press,
    this.title,
    super.key,
  });
  final String? title;
  final Function()? press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TileWithCustomunderline(
            text: title,
          ),
          const Spacer(),
          SizedBox(
            height: 40,
            width: 60,
            child: FloatingActionButton(
              backgroundColor: kPrimarycolor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              onPressed: press,
              child: const Text(
                "More",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TileWithCustomunderline extends StatelessWidget {
  const TileWithCustomunderline({
    super.key,
    this.text,
  });
  final String? text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: [
          Text(
            text!,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 7,
              color: kPrimarycolor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
