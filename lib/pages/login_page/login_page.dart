import 'package:flutter/material.dart';
import 'package:property_rents/general_widget/divider_widget.dart';
import 'package:property_rents/general_widget/light_button_with_icon.dart';
import 'package:property_rents/general_widget/my_text_field.dart';
import 'package:property_rents/general_widget/primary_button.dart';
import 'package:property_rents/general_widget/regular_button_with_icon.dart';
import 'package:property_rents/general_widget/string_to_bool_converter.dart';
import 'package:property_rents/splash_page.dart';
import 'package:property_rents/themes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FocusNode _focusOne = FocusNode();
  final FocusNode _focusTwo = FocusNode();
  bool focusedOne = false;
  bool focusedTwo = false;

  @override
  void initState() {
    super.initState();
    _focusOne.addListener(_onFocusChange);
    _focusTwo.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    super.dispose();
    _focusOne.removeListener(_onFocusChange);
    _focusOne.dispose();
    _focusTwo.removeListener(_onFocusChange);
    _focusTwo.dispose();
  }

  void _onFocusChange() {
    debugPrint("Focus: ${_focusOne.hasFocus.toString()}");
    focusedOne = toBoolean(_focusOne.hasFocus.toString());
    focusedTwo = toBoolean(_focusTwo.hasFocus.toString());
    debugPrint(focusedOne.toString());
    debugPrint(focusedTwo.toString());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final double widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: whiteColor,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 44, left: rlEdge, right: rlEdge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  IconButton(
                      splashRadius: 20.0,
                      padding: const EdgeInsets.all(0.0),
                      constraints: const BoxConstraints(),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 18,
                        color: blueDarkColor,
                      )),
                ],
              ),
              const SizedBox(
                height: 33,
              ),
              Text(
                "Welcome Back!",
                style: blueDarkTextStyle.copyWith(
                    fontFamily: "roboto",
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                "Log In to your Placoo account to explore your dream \nplace to live across the whole world!",
                style: greyBoldTextStyle.copyWith(
                    fontFamily: "roboto",
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    height: 1.5),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Username",
                style: regularTextStyle.copyWith(
                    fontFamily: "roboto",
                    fontWeight: FontWeight.normal,
                    fontSize: 16),
              ),
              const SizedBox(
                height: 8,
              ),
              MyTextField(
                type: 'text',
                focus: _focusOne,
                focused: focusedOne,
                prefixIcon: "assets/icons/user-icon.png",
                suffixIcon: "",
                obscuring: false,
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                "Password",
                style: regularTextStyle.copyWith(
                    fontFamily: "roboto",
                    fontWeight: FontWeight.normal,
                    fontSize: 16),
              ),
              const SizedBox(
                height: 8,
              ),
              MyTextField(
                type: 'text',
                focus: _focusTwo,
                focused: focusedTwo,
                prefixIcon: "assets/icons/key-icon.png",
                suffixIcon: "",
                obscuring: true,
              ),
              const SizedBox(
                height: 28,
              ),
              PrimaryButton(
                  widthDevice: widthDevice,
                  title: "Login in",
                  functionTo: const SplashPage()),
              const SizedBox(
                height: 12,
              ),
              Center(
                child: Text(
                  "Forgot Password",
                  style: greyBoldTextStyle.copyWith(
                    fontFamily: "roboto",
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 42,
              ),
              const DividerWidget(),
              const SizedBox(
                height: 42,
              ),
              RegularButtonWithIcon(
                widthDevice: widthDevice,
                imgData: "assets/icons/apple-icon.png",
                titles: "Sign in with Apple",
              ),
              const SizedBox(
                height: 12,
              ),
              LightButtonWithIcon(
                widthDevice: widthDevice,
                imgData: "assets/icons/google-icon.png",
                titles: "Sign in with Google",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
