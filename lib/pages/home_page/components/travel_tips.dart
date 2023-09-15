import 'package:flutter/material.dart';
import 'package:property_rents/pages/home_page/components/travel_tips_card.dart';
import 'package:property_rents/themes.dart';

class TravelTips extends StatelessWidget {
  const TravelTips({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
<<<<<<< HEAD
          "Travel tips for you", 
=======
          "Travel tips for you",
>>>>>>> c5278095e14091e429dd16ef20c0c57a43545c4b
          style: greyBoldTextStyle.copyWith(
              fontFamily: "roboto",
              fontSize: 18,
              fontWeight: FontWeight.w200,
              fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 20,
        ),
        const TravelTipsCard(
          date: 'Saturday, November 10, 2021',
          imgUrl: "assets/images/tips1.jpg",
          title: "Learn more about Surabaya’s Ecosystem in 2022",
          description:
              "Surabaya as the second largest city in Indonesia has very high dynamics of land",
        ),
        SizedBox(height: 20,),
        const TravelTipsCard(
          date: 'Sunday, November 11, 2021',
          imgUrl: "assets/images/tips2.jpg",
          title: "8 things you need to know to live in Surabaya, Indonesia!",
          description:
              "Surabaya as the second largest city in Indonesia has very high dynamics of land",
        ),
      ],
    );
  }
}
