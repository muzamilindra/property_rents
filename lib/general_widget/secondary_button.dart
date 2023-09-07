import 'package:flutter/material.dart';

import '../themes.dart';

// ignore: must_be_immutable
class SecondaryButton extends StatelessWidget {
  SecondaryButton({
    Key? key,
    required this.widthDevice,
    required this.functionTo,
  }) : super(key: key);

  final double widthDevice;
  Widget functionTo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthDevice - rlEdge,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => functionTo));
        },
        style: TextButton.styleFrom(
            elevation: 0,
            side: const BorderSide(color: Color(0xFFE3E3E7)),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        child: Text(
          "Sign up",
          style: greyTextStyle.copyWith(
            fontFamily: "Roboto",
            fontSize: 16,
            color: const Color(0xFF475569),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
