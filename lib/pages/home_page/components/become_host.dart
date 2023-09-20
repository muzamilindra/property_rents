
import 'package:flutter/material.dart';

import '../../../themes.dart';

class BecomeHost extends StatelessWidget {
  const BecomeHost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: const Color(0xFF000000).withOpacity(0.10),
          blurRadius: 20,
        ),
      ], borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: MediaQuery.of(context).size.width - 32,
          height: 200,
          // color: Colors.grey[100],
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white),
          child: Column(
            children: [
              Container(
                // color: Colors.amber,
                width: MediaQuery.of(context).size.width - 32,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [
                        0.0,
                        1
                      ],
                      colors: [
                        Color(0xFFBD7AFD),
                        Color(0xFF6246EA),
                      ]),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.visible,
                                  text: const TextSpan(
                                    text:
                                        'Want to host your own place?',
                                    style: TextStyle(
                                        fontFamily: "roboto",
                                        fontSize: 20,
                                        fontWeight: FontWeight.w200,
                                        fontStyle: FontStyle.italic,
                                        color: Colors.white),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.visible,
                                  text: const TextSpan(
                                    text:
                                        'Earn passive income by renting or selling your properties!',
                                    style: TextStyle(
                                        fontFamily: "roboto",
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        letterSpacing: 0.4),
                                  ),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Container(
                                  width: 120,
                                  height: 33,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(35),
                                      color: Colors.white),
                                  child: Center(
                                    child: Text(
                                      "Become a host",
                                      style:
                                          blueDarkTextStyle.copyWith(
                                        fontFamily: "roboto",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w200,
                                        fontStyle: FontStyle.italic,
                                        color:
                                            const Color(0xff7A61F4),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                              // '2222',
                              // style: greyBoldTextStyle.copyWith(
                              //     color: const Color(0xff868686),
                              //     letterSpacing: 0.5,
                              //     fontFamily: "roboto",
                              //     fontSize: 13,
                              //     fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width *
                              0.34,
                          height: 200,
                          child: Image.asset(
                            'assets/images/tips1.jpg',
                            width: 227,
                            height: 227 * 0.7,
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                    // const SizedBox(
                    //   height: 6,
                    // ),
                    // SizedBox(
                    //   // color: Colors.brown,
                    //   width:
                    //       (MediaQuery.of(context).size.width) / 1.5,
                    //   child: RichText(
                    //     textAlign: TextAlign.start,
                    //     overflow: TextOverflow.visible,
                    //     text: TextSpan(
                    //       text: 'title',
                    //       style: TextStyle(
                    //           fontFamily: "roboto",
                    //           fontSize: 16,
                    //           fontWeight: FontWeight.w200,
                    //           fontStyle: FontStyle.italic,
                    //           color: Colors.black),
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // Container(
                    //   // color: Colors.cyan,
                    //   width:
                    //       (MediaQuery.of(context).size.width) / 1.2,
                    //   height: 42,
                    //   child: RichText(
                    //     maxLines: 2,
                    //     textAlign: TextAlign.start,
                    //     overflow: TextOverflow.ellipsis,
                    //     text: TextSpan(
                    //       text: "tes",
                    //       style: TextStyle(
                    //           fontFamily: "roboto",
                    //           fontSize: 17,
                    //           // fontWeight: FontWeight.w200,
                    //           color: Colors.black),
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 24,
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
