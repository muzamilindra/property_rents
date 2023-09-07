import 'package:flutter/material.dart';
import 'package:property_rents/general_widget/my_text_field.dart';
import 'package:property_rents/general_widget/string_to_bool_converter.dart';
import 'package:property_rents/pages/home_page/components/card_with_side_image.dart';
import 'package:property_rents/pages/home_page/components/next_trip.dart';
import 'package:property_rents/themes.dart';

import 'components/near_locations.dart';
import 'components/top_rated_city.dart';
import 'components/travel_tips.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final FocusNode _focusOne = FocusNode();

  bool focusedOne = false;
  TabController? _controller;
  final int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    // _controller = TabController(length: 2, vsync: this);
    // _controller?.addListener(() {
    //   setState(() {
    //     _selectedIndex = _controller!.index;
    //   });
    //   print("Selected Index: " + _controller!.index.toString());
    // });
    _focusOne.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focusOne.removeListener(_onFocusChange);
    _focusOne.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    debugPrint("Focus: ${_focusOne.hasFocus.toString()}");
    focusedOne = toBoolean(_focusOne.hasFocus.toString());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        // physics: const NeverScrollableScrollPhysics(),
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(
              left: rlEdge, top: rlEdge + 20, bottom: rlEdge, right: rlEdge),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Find your place in",
                style: greyBoldTextStyle.copyWith(
                    fontFamily: 'roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    wordSpacing: 0.1),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/icons/location.png",
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Surabaya, Indonesia",
                    style: greyBoldTextStyle.copyWith(
                        fontFamily: "roboto",
                        fontSize: 20,
                        fontWeight: FontWeight.w200,
                        fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Image.asset(
                    "assets/icons/arrow-down.png",
                    width: 20,
                    height: 20,
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 48,
                child: MyTextField(
                  type: "text",
                  focus: _focusOne,
                  focused: focusedOne,
                  prefixIcon: "assets/icons/search-normal.png",
                  suffixIcon: "assets/icons/setting.png",
                  obscuring: false,
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              Text(
                "What dou you need?",
                style: greyBoldTextStyle.copyWith(
                    fontFamily: "roboto",
                    fontSize: 18,
                    fontWeight: FontWeight.w200,
                    fontStyle: FontStyle.italic),
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultTabController(
                length: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 53,
                      // color: Color(0xFFE3E3E7),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFE3E3E7)),
                        borderRadius: BorderRadius.circular(72),
                        color: const Color(0xffF5F4F8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TabBar(
                          indicator: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: -8,
                                  color:
                                      const Color(0xFF917AFD).withOpacity(0.5),
                                  blurRadius: 12,
                                  offset: const Offset(
                                      0, 10), // changes position of shadow
                                ),
                              ],
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
                              borderRadius: BorderRadius.circular(72)),
                          // labelColor: Colors.black,
                          labelColor: Colors.white,
                          labelStyle: whiteTextStyle.copyWith(
                              fontFamily: 'roboto',
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                          // indicatorColor: whiteColor,
                          unselectedLabelColor: greyBoldColor,
                          unselectedLabelStyle: greyBoldTextStyle.copyWith(
                              fontFamily: 'roboto',
                              fontSize: 15,
                              fontWeight: FontWeight.w300),
                          onTap: (index) {},
                          controller: _controller,
                          tabs: const [
                            Tab(
                              text: "I need to rent",
                            ),
                            Tab(
                              text: "I need to buy",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const NearLocations(),
              const SizedBox(
                height: 36,
              ),
              const TopRatedCity(),
              const SizedBox(
                height: 36,
              ),
              const NextTrip(),
              const SizedBox(
                height: 36,
              ),
              const TravelTips(),
              const SizedBox(
                height: 36,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 32,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  style: TextButton.styleFrom(
                      elevation: 0,
                      side: const BorderSide(color: Color(0xff7A61F4)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                        fontFamily: "roboto",
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic,
                        color: Color(0xff7A61F4)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
