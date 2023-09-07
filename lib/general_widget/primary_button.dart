import 'package:flutter/material.dart';

import '../themes.dart';

// ignore: must_be_immutable
class PrimaryButton extends StatelessWidget {
  PrimaryButton(
      {Key? key,
      required this.widthDevice,
      required this.title,
      required this.functionTo})
      : super(key: key);

  final double widthDevice;
  final String title;
  Widget functionTo;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Center(
        child: Container(
          height: 40,
          width: widthDevice - 70,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey, //New
                  blurRadius: 20.0,
                  offset: Offset(0, 15))
            ],
          ),
        ),
      ),
      Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [
                  0.0,
                  1
                ],
                colors: [
                  Color(0xFF917AFD),
                  Color(0xFF6246EA),
                ]),
            borderRadius: BorderRadius.circular(30),
          ),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => functionTo));
            },
            style: TextButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.transparent,
                minimumSize: Size(widthDevice - rlEdge, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 18),
              child: Text(
                title,
                style: whiteTextStyle.copyWith(
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )),
    ]);
  }
}
