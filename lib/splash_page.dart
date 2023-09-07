import 'package:flutter/material.dart';
import 'package:property_rents/pages/login_page/login_page.dart';
import 'package:property_rents/pages/register_page/register_page.dart';
import 'package:property_rents/themes.dart';

import 'general_widget/secondary_button.dart';
import 'general_widget/primary_button.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;
    double heightDevice = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: whiteColor,
      body: Padding(
        padding: EdgeInsets.only(top: rlEdge + 16, left: rlEdge, right: rlEdge),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: heightDevice * 0.60,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            "assets/images/splash_screen.png",
                          ))),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: widthDevice,
                      height: heightDevice * 0.25,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              stops: const [
                            0.3,
                            0.3,
                            0.9
                          ],
                              colors: [
                            whiteColor.withOpacity(1),
                            whiteColor,
                            whiteColor.withOpacity(0.1)
                          ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter)),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            "New Place, New Home!",
                            style: blueDarkTextStyle.copyWith(
                                fontFamily: 'roboto',
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "Are you ready to uproot and start over in a new area? Placoo will help you on your journey!",
              style: greyCondensedTextStyle.copyWith(
                fontFamily: 'robotoCondensed',
                fontSize: 16,
                color: greyBoldColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 32,
            ),
            PrimaryButton(widthDevice: widthDevice, title: "Log in", functionTo: const LoginPage(),),
            const SizedBox(
              height: 12,
            ),
            SecondaryButton(widthDevice: widthDevice, functionTo: const RegisterPage(),)
          ],
        ),
      ),
    );
  }
}
