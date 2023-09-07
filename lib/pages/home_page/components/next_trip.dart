import 'package:flutter/material.dart';
import 'package:property_rents/themes.dart';

class NextTrip extends StatelessWidget {
  const NextTrip({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Find  out your next trip!",
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: const Color(0xFF000000).withOpacity(0.10),
                  blurRadius: 30,
                ),
              ], borderRadius: BorderRadius.circular(10), color: whiteColor),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.43,
                  height: 227,
                  decoration: const BoxDecoration(
                    // borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/hotel2.jpg",
                        width: 227,
                        height: 227 * 0.7,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 16, right: 16, left: 16),
                        child: RichText(
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          text: const TextSpan(
                            text: "Jakarta, DKI Jakarta",
                            style: TextStyle(
                                fontFamily: "roboto",
                                fontSize: 16,
                                fontWeight: FontWeight.w200,
                                fontStyle: FontStyle.italic,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          "345 rented props",
                          style: greyBoldTextStyle.copyWith(
                              fontFamily: "roboto",
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: const Color(0xFF000000).withOpacity(0.10),
                  blurRadius: 30,
                ),
              ], borderRadius: BorderRadius.circular(10), color: whiteColor),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.43,
                  height: 227,
                  decoration: const BoxDecoration(
                    // borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/hotel3.jpg",
                        width: 227,
                        height: 227 * 0.7,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 16, right: 16, left: 16),
                        child: RichText(
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          text: const TextSpan(
                            text: "Surabaya, East Java",
                            style: TextStyle(
                                fontFamily: "roboto",
                                fontSize: 16,
                                fontWeight: FontWeight.w200,
                                fontStyle: FontStyle.italic,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          "345 rented props",
                          style: greyBoldTextStyle.copyWith(
                              fontFamily: "roboto",
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
