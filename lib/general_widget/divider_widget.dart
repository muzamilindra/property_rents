import 'package:flutter/material.dart';

import '../themes.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Divider(
          color: greyColor,
          thickness: 2,
        )),
        Container(
          width: 47,
          height: 26,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: greyColor),
          child: const Center(
            child: Text(
              "OR",
              style: TextStyle(
                  fontFamily: "roboto",
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff9E91DA)),
            ),
          ),
        ),
        Expanded(
            child: Divider(
          color: greyColor,
          thickness: 2,
        )),
      ],
    );
  }
}
