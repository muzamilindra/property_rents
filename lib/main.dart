import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:property_rents/splash_page.dart';
import 'package:property_rents/themes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // color: Colors.white,
      
      theme: ThemeData(primarySwatch: whiteColorSwatch, ),
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
