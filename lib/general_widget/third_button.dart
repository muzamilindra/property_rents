
import 'package:flutter/material.dart';

class ThirdButton extends StatelessWidget {
  const ThirdButton({required this.text,
    Key? key,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 32,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          // setState(() {});
        },
        style: TextButton.styleFrom(
            elevation: 0,
            side: const BorderSide(color: Color(0xff7A61F4)),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        child: Text(
          text,
          style: const TextStyle(
              fontFamily: "roboto",
              fontSize: 16,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic,
              color: Color(0xff7A61F4)),
        ),
      ),
    );
  }
}
