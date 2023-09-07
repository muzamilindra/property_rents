import 'package:flutter/material.dart';
import 'package:property_rents/general_widget/divider_widget.dart';
import 'package:property_rents/general_widget/light_button_with_icon.dart';
import 'package:property_rents/general_widget/my_text_field.dart';
import 'package:property_rents/general_widget/primary_button.dart';
import 'package:property_rents/general_widget/regular_button_with_icon.dart';
import 'package:property_rents/general_widget/string_to_bool_converter.dart';
import 'package:property_rents/models/country_model.dart';

import 'package:property_rents/models/dummy_data.dart';
import 'package:property_rents/pages/home_page/home_page.dart';
import '../../themes.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  

  final FocusNode _focusOne = FocusNode();
  final FocusNode _focusTwo = FocusNode();
  final FocusNode _focusThree = FocusNode();
  bool focusedOne = false;
  bool focusedTwo = false;
  bool focusedThree = false;

  int selectedCountryId = 1;
  String selectedCountrytitle = 'new era';
  String selectedCountryImageUrl = 'assets/images/flags/indonesia.png';

  List<DropdownMenuItem<CountryModel>> countryListDropDownItems = [];
  CountryModel? selectedCountry = countryList.first;

  List<DropdownMenuItem<CountryModel>> buildCountryList(List country) {
    List<DropdownMenuItem<CountryModel>> items = [];
    for (CountryModel countryList in country) {
      items.add(
        DropdownMenuItem(
          value: countryList,
          child: Image.asset(
            countryList.imageUrl!,
            width: 20,
            height: 20,
          ),
        ),
      );
    }
    return items;
  }

  void onChangeActivityListDropDownItem(CountryModel? selected) {
    setState(() {
      selectedCountry = selected!;

      selectedCountryId = selected.id!;
      selectedCountrytitle = selected.title!;
      selectedCountryImageUrl = selected.imageUrl!;
    });

    
  }

  @override
  void initState() {
    
    super.initState();
    countryListDropDownItems = buildCountryList(countryList);

    _focusOne.addListener(_onFocusChange);
    _focusTwo.addListener(_onFocusChange);
    _focusThree.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    super.dispose();
    _focusOne.removeListener(_onFocusChange);
    _focusOne.dispose();
    _focusTwo.removeListener(_onFocusChange);
    _focusTwo.dispose();
    _focusThree.removeListener(_onFocusChange);
    _focusThree.dispose();
    
  }

  void _onFocusChange() {
    debugPrint("Focus: ${_focusOne.hasFocus.toString()}");
    focusedOne = toBoolean(_focusOne.hasFocus.toString());
    focusedTwo = toBoolean(_focusTwo.hasFocus.toString());
    focusedThree = toBoolean(_focusThree.hasFocus.toString());
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
            padding: EdgeInsets.only(
                top: 44, left: rlEdge, right: rlEdge, bottom: rlEdge),
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
                  "Let’s explore together!",
                  style: blueDarkTextStyle.copyWith(
                      fontFamily: "roboto",
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  "Create your Placoo account to explore your dream\nplace to live across the whole world!",
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
                  height: 18,
                ),
                Text(
                  "Phone Number",
                  style: regularTextStyle.copyWith(
                      fontFamily: "roboto",
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  child: Stack(children: [
                    MyTextField(
                      type: 'number',
                      focus: _focusThree,
                      focused: focusedThree,
                      // icon: "assets/icons/key-icon.png",
                      prefixIcon: "",
                      suffixIcon: "",
                      obscuring: false,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        width: 50,
                        child: DropdownButton<CountryModel>(
                            underline: Container(
                              height: 0,
                              color: Colors.transparent,
                            ),
                            isExpanded: true,
                            dropdownColor: greyColor,
                            value: selectedCountry,
                            onChanged: onChangeActivityListDropDownItem,
                            items: countryListDropDownItems),
                      ),
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 28,
                ),
                PrimaryButton(
                    widthDevice: widthDevice,
                    title: "Create Account",
                    functionTo: const HomePage()),
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
        ));
  }
}
