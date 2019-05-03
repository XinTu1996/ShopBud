import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shopbud/model/product.dart';

import 'dart:io';
import 'dart:convert';
import 'package:csv/csv.dart';
import 'package:shopbud/utils/csv.dart';

class UIData {
  //routes
  static const String homeRoute = "/Home";
  static const String pandaRoute = "/Panda";
  static const String requestRoute = "/Request";
  static const String promoRoute = "/Promo";
  static const String seoulRoute = "/Seoul";

  //strings
  static const String appName = "ShopBud";

  //fonts
  static const String quickFont = "Quicksand";
  static const String ralewayFont = "Raleway";
  static const String quickBoldFont = "Quicksand_Bold.otf";
  static const String quickNormalFont = "Quicksand_Book.otf";
  static const String quickLightFont = "Quicksand_Light.otf";

  //images
  static const String imageDir = "assets/images";
  static const String pkImage = "$imageDir/pk.jpg";
  static const String profileImage = "$imageDir/profile.jpg";
  static const String blankImage = "$imageDir/blank.jpg";
  static const String dashboardImage = "$imageDir/dashboard.jpg";
  static const String loginImage = "$imageDir/login.jpg";
  static const String paymentImage = "$imageDir/payment.jpg";
  static const String settingsImage = "$imageDir/setting.jpeg";
  static const String shoppingImage = "$imageDir/shopping.jpeg";
  static const String timelineImage = "$imageDir/timeline.jpeg";
  static const String verifyImage = "$imageDir/verification.jpg";
  static const String logoImage = "$imageDir/logo.png";
  static const String panda = "$imageDir/panda.jpg";
  static const String seoulmart = "$imageDir/seoulmart.jpg";

  //files
  static const String fileDir = "assets/files";
  static const String csvPath = "$fileDir/storedata.csv";

  //login
  static const String enter_code_label = "Phone Number";
  static const String enter_code_hint = "10 Digit Phone Number";
  static const String enter_otp_label = "OTP";
  static const String enter_otp_hint = "4 Digit OTP";
  static const String get_otp = "Get OTP";
  static const String resend_otp = "Resend OTP";
  static const String login = "Login";
  static const String enter_valid_number = "Enter 10 digit phone number";
  static const String enter_valid_otp = "Enter 4 digit otp";

  //gneric
  static const String error = "Error";
  static const String success = "Success";
  static const String ok = "OK";
  static const String forgot_password = "Forgot Password?";
  static const String something_went_wrong = "Something went wrong";
  static const String coming_soon = "Coming Soon";

  static const MaterialColor ui_kit_color = Colors.grey;

  //colors
  static List<Color> kitGradients = [
    // new Color.fromRGBO(103, 218, 255, 1.0),
    // new Color.fromRGBO(3, 169, 244, 1.0),
    // new Color.fromRGBO(0, 122, 193, 1.0),
    Colors.blueGrey.shade800,
    Colors.black87,
  ];
  static List<Color> kitGradients2 = [
    Colors.cyan.shade600,
    Colors.blue.shade900
  ];

  //randomcolor
  static final Random _random = new Random();

  /// Returns a random color.
  static Color next() {
    return new Color(0xFF000000 + _random.nextInt(0x00FFFFFF));
  }

  static List<Product> products1;
  static List<Product> products2;

  getData1() {

    //final path = p.join('directory', 'storedata.csv');

    //final fields = await input.transform(utf8.decoder).transform(new CsvToListConverter()).toList();
    final fields = const CsvToListConverter(textDelimiter: '"', fieldDelimiter: ',', eol: '\n').convert(CSV.s1);


    products1 = new List();

    for (var i = 1; i < fields.length; i++) {
      products1.add(Product(
          category: fields[i][0],
          name: fields[i][1],
          price: fields[i][2],
          unit: fields[i][0] == "Vegetables" || fields[i][0] == "Fruit" ? "lb" : "",
          status: fields[i][3] == 1 ? true : false,
          image: fields[i][4]
      ));
    }

  }

  getData2() {

    //final path = p.join('directory', 'storedata.csv');
    //final fields = await input.transform(utf8.decoder).transform(new CsvToListConverter()).toList();
    final fields = const CsvToListConverter(textDelimiter: '"', fieldDelimiter: ',', eol: '\n').convert(CSV.s2);


    products2 = new List();

    for (var i = 1; i < fields.length; i++) {
      products2.add(Product(
          category: fields[i][0],
          name: fields[i][1],
          price: fields[i][2],
          unit: fields[i][0] == "Vegetables" || fields[i][0] == "Fruit" ? "lb" : "",
          status: fields[i][3] == 1 ? true : false,
          image: fields[i][4]
      ));
    }

  }

  UIData() {
    getData1();
    getData2();
  }
}