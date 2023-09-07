
import 'package:flutter/material.dart';
import 'package:property_rents/pages/home_page/components/card_with_side_image.dart';

import '../../../themes.dart';

class TopRatedCity extends StatelessWidget {
  const TopRatedCity({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Top rated in Surabaya",
              style: greyBoldTextStyle.copyWith(
                  fontFamily: "roboto",
                  fontSize: 18,
                  fontWeight: FontWeight.w200,
                  fontStyle: FontStyle.italic),
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
