import 'package:flutter/material.dart';
import 'package:property_rents/themes.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    required this.title,
    required this.imgSource,
    Key? key,
  }) : super(key: key);

  final String title;
  final String imgSource;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 189,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: const Color(0xFF000000).withOpacity(0.10),
          blurRadius: 40,
        ),
      ], borderRadius: BorderRadius.circular(10), color: whiteColor),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0)),
              child: Image.asset(
                imgSource,
                width: MediaQuery.of(context).size.width * 0.30,
                height: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.star_rate_rounded,
                            size: 15,
                            color: Colors.amber,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          RichText(
                            text: const TextSpan(
                              text: "4.8",
                              style: TextStyle(
                                  fontFamily: "roboto",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' (47)',
                                    style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        title,
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                            color: blackColor,
                            fontSize: 16,
                            fontFamily: 'roboto'),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Surabaya, East Java",
                        style: greyBoldTextStyle.copyWith(
                            fontFamily: "roboto", fontSize: 13),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.bed,
                              size: 15,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              "2 room",
                              style: greyBoldTextStyle.copyWith(
                                  fontFamily: "roboto", fontSize: 13),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            const Icon(
                              Icons.home_filled,
                              size: 15,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              "673 m2",
                              style: greyBoldTextStyle.copyWith(
                                  fontFamily: "roboto", fontSize: 13),
                            ),
                          ]),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  RichText(
                    text: const TextSpan(
                      text: '\$526',
                      style: TextStyle(
                          fontFamily: "roboto",
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' / month',
                            style: TextStyle(color: Colors.grey, fontSize: 12)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
