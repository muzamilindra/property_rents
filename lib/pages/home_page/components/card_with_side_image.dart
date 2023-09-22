import 'package:flutter/material.dart';
import 'package:property_rents/pages/home_page/components/item_card.dart';
import 'package:property_rents/pages/property_details_page/property_details_page.dart';
import 'package:property_rents/splash_page.dart';
import '../../../themes.dart';

class CardWithSideImage extends StatelessWidget {
  const CardWithSideImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PropertyDetailsPage()));
            },
            child: const ItemCard(
                title: "Entire Bromo mountain view Cabin in Surabaya",
                imgSource: "assets/images/hotel2.jpg"),
          ),
          const SizedBox(
            width: 20,
          ),
          const ItemCard(
              title: "Entire Classic-modern House in Sidoarjo",
              imgSource: "assets/images/hotel3.jpg"),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
