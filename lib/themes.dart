import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


Color blueColor = const Color(0xFF684DEC);
Color orangeColor = const Color(0xFFFFBF75);
Color greyColor = const Color(0xFFEEEEEE);
Color greyBoldColor = const Color(0xFF7D7F88); 
Color whiteColor = const Color(0xFFFFFFFF);
Color blackColor = const Color(0xFF000000);
Color blueDarkColor = const Color(0xFF222831);
Color blackLightColor = const Color(0xFF393E48);

List<Color> primaryGradient = [const Color(0xFF917AFD), const Color(0xFF6246EA)];

double topEdge = 60;
double rlEdge = 16;

// ROBOTO
// Blue Text Style Style
TextStyle blueTextStyle =
    GoogleFonts.roboto(fontWeight: FontWeight.bold, color: blueColor);

// Grey Text Style 
TextStyle greyTextStyle =
    GoogleFonts.roboto(fontWeight: FontWeight.w300, color: greyColor);

TextStyle greyBoldTextStyle =
    GoogleFonts.roboto(fontWeight: FontWeight.w300, color: greyBoldColor);

TextStyle greyCondensedTextStyle =
    GoogleFonts.robotoCondensed(fontWeight: FontWeight.normal, color: greyColor);


//White Text STyle
TextStyle whiteTextStyle =
    GoogleFonts.roboto(fontWeight: FontWeight.normal, color: whiteColor);

// Regular Text Style
TextStyle regularTextStyle =
    GoogleFonts.roboto(fontWeight: FontWeight.normal, color: blackColor);

// Blue Text Style
TextStyle blueDarkTextStyle =
    GoogleFonts.roboto( color: blueDarkColor);

TextStyle blueLightTextStyle =
    GoogleFonts.roboto(fontWeight: FontWeight.normal, color: blackLightColor);

// INTER
TextStyle whiteInterTextStyle =
    GoogleFonts.inter(fontWeight: FontWeight.normal, color: whiteColor);

   const MaterialColor whiteColorSwatch = MaterialColor(
  0xFFFFFFFF,
   <int, Color>{
    50:  Color(0xFFFFFFFF),
    100:  Color(0xFFFFFFFF),
    200:  Color(0xFFFFFFFF),
    300:  Color(0xFFFFFFFF),
    400:  Color(0xFFFFFFFF),
    500:  Color(0xFFFFFFFF),
    600:  Color(0xFFFFFFFF),
    700:  Color(0xFFFFFFFF),
    800:  Color(0xFFFFFFFF),
    900:  Color(0xFFFFFFFF),
  },
);