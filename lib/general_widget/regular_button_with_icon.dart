
import 'package:flutter/material.dart';

import '../themes.dart';

class RegularButtonWithIcon extends StatelessWidget {
  const RegularButtonWithIcon(
      {Key? key,
      required this.widthDevice,
      required this.imgData,
      required this.titles})
      : super(key: key);

  final double widthDevice;
  final String imgData;
  final String titles;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthDevice - rlEdge,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: const Color(0xFF222831),
            elevation: 0,
            side: const BorderSide(color: Color(0xFFE3E3E7)),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Image.asset(
            imgData,
            width: 24,
            height: 24,
          ),
          Text(
            titles,
            style: greyTextStyle.copyWith(
              fontFamily: "Roboto",
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container()
        ]),
      ),
    );
  }
}
