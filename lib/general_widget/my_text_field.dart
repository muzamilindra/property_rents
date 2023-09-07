import 'package:flutter/material.dart';

import '../themes.dart';
import 'gradient_icon.dart';
import 'gradient_outline_input_border.dart';

class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    required this.type,
    required FocusNode focus,
    required this.focused,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.obscuring,
  })  : _focus = focus,
        super(key: key);

  final String type;
  final FocusNode _focus;
  final bool focused;
  final String prefixIcon;
  final String suffixIcon;
  bool obscuring = false;


  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: type == 'number'? TextInputType.number : TextInputType.text,
        focusNode: _focus,
        obscureText: obscuring,
        decoration: InputDecoration(
            errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red)),
            contentPadding: const EdgeInsets.all(10),
            filled: true,
            fillColor: const Color(0xffF5F4F8),
            prefixIcon: prefixIcon != ''
                ? Padding(
                    padding: const EdgeInsets.only(left: 18, right: 12),
                    child: GradientIcon(
                      // icon: "assets/icons/user-icon.png",
                      icon: prefixIcon,
                      size: 22.0,
                      gradient: focused
                          ? const LinearGradient(
                              colors: <Color>[
                                  Color(0xFF917AFD),
                                  Color(0xFF6246EA),
                                ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight)
                          : LinearGradient(
                              colors: <Color>[
                                greyBoldColor,
                                greyBoldColor,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                    ),
                  )
                : const Padding(
                    padding: EdgeInsets.only(left: 18, right: 18),
                    child: SizedBox(width: 35,),
                  ),

            suffixIcon: suffixIcon != ''
                ? Padding(
                    padding: const EdgeInsets.only(left: 18, right: 12),
                    child: GradientIcon(
                      // icon: "assets/icons/user-icon.png",
                      icon: suffixIcon,
                      size: 25.0,
                      gradient: focused
                          ? const LinearGradient(
                              colors: <Color>[
                                  Color(0xFF917AFD),
                                  Color(0xFF6246EA),
                                ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight)
                          : LinearGradient(
                              colors: <Color>[
                                greyBoldColor,
                                greyBoldColor,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                    ),
                  )
                : const Padding(
                    padding: EdgeInsets.only(left: 18, right: 18),
                    child: SizedBox(width: 35,),
                  ),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xFFE3E3E7)),
                borderRadius: BorderRadius.circular(81)),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFFE3E3E7)),
              borderRadius: BorderRadius.circular(81), //<-- SEE HERE
            ),
            focusedBorder: GradientOutlineInputBorder(
              borderRadius: BorderRadius.circular(81),
              width: 2,
              gradient: const LinearGradient(colors: [
                Color(0xFF917AFD),
                Color(0xFF6246EA),
              ]),
            )));
  }
}
