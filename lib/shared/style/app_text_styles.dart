import 'package:flutter/material.dart';

import 'style_theme.dart';

class AppTextStyles {
  static AppTextStyles? _instance;
  AppTextStyles._();
  static AppTextStyles getInstance() {
    return _instance ?? AppTextStyles._();
  }

  TextStyle small8({
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: 8,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  TextStyle small10({
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: 10,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  TextStyle small12({
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: 12,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  TextStyle small14({
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: 14,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  TextStyle medium16({
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: 16,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  TextStyle medium18({
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: 18,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  TextStyle medium20({
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: 20,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  TextStyle big22({
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: 22,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  TextStyle big28({
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: 28,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  TextStyle big32({
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: 32,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  TextStyle big54({
    Color textColor = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      color: textColor,
      fontSize: 54,
      fontFamily: 'Roboto',
      fontWeight: fontWeight,
      decoration: decoration,
    );
  }

  TextStyle title = TextStyle(
    color: Style.theme.primaryTextColor,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  TextStyle titleCard = TextStyle(
    color: Style.theme.primaryTextColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  TextStyle titleCardBold = TextStyle(
    color: Style.theme.primaryTextColor,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  TextStyle titleBold = TextStyle(
    color: Style.theme.primaryTextColor,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  TextStyle heading = TextStyle(
    color: Style.theme.primaryTextColor,
    fontSize: 20,
  );

  TextStyle titleButton = TextStyle(
    color: Style.theme.primaryTextColor,
    fontSize: 15,
    fontWeight: FontWeight.w600,
    fontFamily: 'Montserrat',
  );

  TextStyle textSnackInformation = TextStyle(
    color: Style.theme.lightTextColor,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  TextStyle labelStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
    color: Style.theme.primaryTextColor,
    fontSize: 13,
  );

  TextStyle headingBold = TextStyle(
    color: Style.theme.primaryTextColor,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  TextStyle simpleStyle = TextStyle(
    color: Style.theme.lightTextColor,
    fontSize: 14,
  );

  TextStyle lighStyleBlack = TextStyle(
    fontWeight: FontWeight.w300,
    color: Style.theme.primaryTextColor,
    fontSize: 14,
  );

  TextStyle simpleDarkStyle = TextStyle(
    color: Style.theme.primaryTextColor,
    fontSize: 14,
  );
}
