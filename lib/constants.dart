import 'package:flutter/material.dart';

const startPageBackground = Color.fromRGBO(3, 158, 162, 1);
const startPageBackButton = Color.fromRGBO(205, 253, 254, 1);
const whiteSmokeBackground = Color.fromRGBO(245, 245, 245, 1);
const imageYellowBackground = Color.fromRGBO(242, 201, 76, 1);
const secondPageBlueBackground = Color.fromRGBO(47, 128, 237, 1);
const secondPageOrangeBackground = Color.fromRGBO(240, 146, 53, 1);
const thirdPageButtonBackground = Color.fromRGBO(230, 254, 255, 1);
const navigateNextIconColor = Color.fromRGBO(30, 43, 114, 1);
const whaleBackground = Color.fromRGBO(1, 195, 255, 1);
const orangePlayButton = Color.fromRGBO(254, 122, 21, 1);
const purpleCardBackground = Color.fromRGBO(64, 50, 133, 1);
const purpleDarkCardBackground = Color.fromRGBO(29, 15, 90, 1);
const yellowCardBackground = Color.fromRGBO(248, 217, 16, 1);
const darkViolet = Color.fromRGBO(38, 32, 68, 1);
const darkVioletDown = Color.fromRGBO(29, 15, 90, 1);
const orangeLiveColor = Color.fromRGBO(242, 78, 30, 1);

class DesignPageColors {
  static const primaryVioletColor = Color(0xFF6D5FFD);
  static const onVioletColor = Color.fromRGBO(48, 79, 254, 0.1);
  static const textColor = Color(0xFF09101D);
  static const secondaryTextColor = Color(0xFF2C3A4B);
  static const blue = Color(0xFF304FFE);
}

class MenuPageColors {
  static const primaryPinkColor = Color(0xFFF43F5E);
  static const onPrimaryPinkColor = Color.fromRGBO(244, 63, 94, 0.1);
  static const searchBackgroundColor = Color(0xFFF4F6F9);
  static const textColor = Color(0xFF09101D);
  static const secondaryTextColor = Color(0xFF858C94);
  static const shadowColor = Color.fromRGBO(90, 108, 234, 0.1);
}
class FifthPageColor {
  static const textColorDesign = Color.fromRGBO(142, 97, 233, 1);
  static const backgroundColorDesign = Color.fromRGBO(142, 97, 233, 0.1);

  static const textColorDevelopment = Color.fromRGBO(236, 142, 0, 1);
  static const backgroundColorDevelopment = Color.fromRGBO(255, 160, 17, 0.1);

  static const textColorHigh = Color.fromRGBO(233, 97, 97, 1);
  static const backgroundColorHigh = Color.fromRGBO(233, 97, 97, 0.1);

  static const textColorLow = Color.fromRGBO(29, 192, 84, 1);
  static const backgroundColorLow = Color.fromRGBO(97, 233, 143, 0.1);

  static const primaryTextColor = Color.fromRGBO(0, 11, 35, 1);
  static const secondaryTextColor = Color.fromRGBO(123, 123, 123, 1);
  static const activeTextColor = Color.fromRGBO(87, 124, 255, 1);

  static const borderColor = Color.fromRGBO(228, 228, 228, 1);
  static const dividerColor = Color.fromRGBO(223, 223, 223, 1);

  static const avatarBackgroundColor = Color.fromRGBO(255, 176, 87, 1);

  static const bottomNavBarTextColor = Color.fromRGBO(168, 168, 168, 1);

  static const mainTextStyle = TextStyle(
    color: primaryTextColor,
    fontSize: 18.0,
    fontFamily: "WorkSans",
    fontWeight: FontWeight.w600,

  );
  static const secondaryTextStyle = TextStyle(
    color: secondaryTextColor,
    fontSize: 12.0,
    fontFamily: "WorkSans",

  );

  static const bottomNavTextStyle = TextStyle(
    color: bottomNavBarTextColor,
    fontSize: 12.0,
    fontFamily: "WorkSans",

  );
}

final ButtonStyle signInButtonStyle = ElevatedButton.styleFrom(
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(100.0)),
  ),
  primary: Colors.white, //background
  onPrimary: Colors.black, //foreground
  minimumSize: const Size(350, 50),
);

final ButtonStyle continueButtonStyle = ElevatedButton.styleFrom(
  //padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(100.0)),
  ),
  primary: startPageBackButton, //background
  onPrimary: Colors.black, //foreground
  minimumSize: const Size(350, 50),
);

final ButtonStyle nextSessionButtonStyle = ElevatedButton.styleFrom(
  //padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(100.0)),
  ),
  primary: startPageBackground, //background
  onPrimary: Colors.white, //foreground
  minimumSize: const Size(350, 50),
);

final ButtonStyle outlineFollowButtonStyle = OutlinedButton.styleFrom(
    //padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    primary: orangePlayButton,
    side: const BorderSide(
      color: orangePlayButton,
    ),
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 40));

final ButtonStyle textButtonStyle = TextButton.styleFrom(primary: Colors.white);

const TextStyle btnStartTextStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
);

Map<int, String> categories = {
  0: "All",
  1: "Bible In a Year",
  2: "Dailies",
  3: "Minutes",
  4: "November"
};
