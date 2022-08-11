import 'package:flutter/material.dart';

abstract class BaseColors {
  //Theme color
  MaterialColor get colorPrimary;
  MaterialColor get colorSecondary;
  MaterialColor get colorAccent;
  MaterialColor get colorNeutral;
  Color get colorBackground;

  //text color
  Color get colorPrimaryText;
  Color get colorSecondaryText;

  //chips color
  Color get catChipColor;
  Color get castChipColor;

  //extra color
  Color get colorWhite;
  Color get colorBlack;

  //TODO add BottomNavigation color
}
