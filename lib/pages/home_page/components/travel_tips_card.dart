
import 'package:flutter/material.dart';
import 'package:property_rents/themes.dart';

class TravelTipsCard extends StatelessWidget {
  const TravelTipsCard({
    required this.imgUrl,
    required this.date,
    required this.title,
    required this.description,
    Key? key,
  }) : super(key: key);

  final String imgUrl;
  final String date;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF000000).withOpacity(0.10),
              blurRadius: 30,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: whiteColor),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: MediaQuery.of(context).size.width - 32,
          height: 310,
          // color: Colors.grey[100],
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 32,
                height: 100,
                child: Image.asset(
                  imgUrl,
                  width: 227,
                  height: 227 * 0.7,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  // color: Colors.amber,
                  width: MediaQuery.of(context).size.width - 32,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            date,
                            style: greyBoldTextStyle.copyWith(
                                color: const Color(0xff868686),
                                letterSpacing: 0.5,
                                fontFamily: "roboto",
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                          const Icon(
                            Icons.favorite_border_rounded,
                            size: 22,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      SizedBox(
                        // color: Colors.brown,
                        width:
                            (MediaQuery.of(context).size.width) /
                                1.5,
                        child: RichText(
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.visible,
                          text: TextSpan(
                            text:
                                title,
                            style: TextStyle(
                                fontFamily: "roboto",
                                fontSize: 16,
                                fontWeight: FontWeight.w200,
                                fontStyle: FontStyle.italic,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        // color: Colors.cyan,
                        width:
                            (MediaQuery.of(context).size.width) /
                                1.2,
                        height: 42,
                        child: RichText(
                          maxLines: 2,
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            text:
                                description,
                            style: TextStyle(
                                fontFamily: "roboto",
                                fontSize: 17,
                                // fontWeight: FontWeight.w200,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        width: 100,
                        height: 33,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(35),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: const [
                                  0.0,
                                  1
                                ],
                                colors: [
                                  const Color(0xFF917AFD)
                                      .withOpacity(0.2),
                                  const Color(0xFF6246EA)
                                      .withOpacity(0.2),
                                ])),
                        child: Center(
                          child: Text(
                            "Read More",
                            style: blueDarkTextStyle.copyWith(
                                fontFamily: "inter",
                                color: const Color(0xff7A61F4),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
