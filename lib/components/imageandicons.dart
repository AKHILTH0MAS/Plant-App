import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'iconcard.dart';

class ImageaaAndIcons extends StatelessWidget {
  const ImageaaAndIcons({
    super.key,
    this.imgSrc,
  });

  final String? imgSrc;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: kDefaultPadding),
      child: SizedBox(
        height: size.height * 0.9,
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          padding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        ),
                      ),
                      const Spacer(),
                      const IconCard(iconSrc: "assets/icons/sun.svg"),
                      const IconCard(iconSrc: "assets/icons/icon_2.svg"),
                      const IconCard(iconSrc: "assets/icons/icon_3.svg"),
                      const IconCard(iconSrc: "assets/icons/icon_4.svg"),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(63),
                  topLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimarycolor.withOpacity(0.29),
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage(imgSrc!),
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
