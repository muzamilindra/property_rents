import 'package:flutter/material.dart';

class ItemActionFloatingButton extends StatelessWidget {
  const ItemActionFloatingButton({
    required this.image,
    required this.title,
    required this.isActive,
    Key? key,
  }) : super(key: key);

  final String image;
  final String title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: isActive
            ? [
                Image.asset(
                  image,
                  width: 20,
                  color: Colors.purple,
                  // color: Colors.purple,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontFamily: "roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      color: Colors.purple.shade300),
                )
              ]
            : [
                Image.asset(
                  image,
                  width: 20,
                  color: Colors.grey.shade700,
                  // color: Colors.purple,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontFamily: "roboto",
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey.shade800),
                )
              ]);
  }
}
