

import 'package:flutter/material.dart';
import 'package:property_rents/pages/home_page/components/card_with_side_image.dart';

import '../../../themes.dart';

class NearLocations extends StatelessWidget {
  const NearLocations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Need your location",
          style: greyBoldTextStyle.copyWith(
              fontFamily: "roboto",
              fontSize: 18,
              fontWeight: FontWeight.w200,
              fontStyle: FontStyle.italic),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "243 properties in Surabaya",
              style: greyBoldTextStyle.copyWith(
                fontFamily: "roboto",
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "See all",
              style: blueTextStyle.copyWith(
                fontFamily: "roboto",
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const CardWithSideImage(),
      ],
    );
  }
}
