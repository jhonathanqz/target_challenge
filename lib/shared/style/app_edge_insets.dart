import 'package:flutter/material.dart';

class AppEdgeInsets {
  static AppEdgeInsets? _instance;
  AppEdgeInsets._();
  static AppEdgeInsets getInstance() {
    return _instance ?? AppEdgeInsets._();
  }

  final EdgeInsets minAll = const EdgeInsets.all(2);

  final EdgeInsets sdMin = const EdgeInsets.all(5);

  final EdgeInsets sdAll = const EdgeInsets.all(10);

  final EdgeInsets mmAll = const EdgeInsets.all(12);

  final EdgeInsets intAll = const EdgeInsets.all(20);

  final EdgeInsets mdAll = const EdgeInsets.all(24);

  final EdgeInsets xlAll = const EdgeInsets.all(30);

  final EdgeInsets vmin = const EdgeInsets.symmetric(vertical: 5);

  final EdgeInsets vsd = const EdgeInsets.symmetric(vertical: 10);

  final EdgeInsets vsdm = const EdgeInsets.symmetric(vertical: 15);

  final EdgeInsets vmd = const EdgeInsets.symmetric(vertical: 20);

  final EdgeInsets hmin = const EdgeInsets.symmetric(horizontal: 5);

  final EdgeInsets hsd = const EdgeInsets.symmetric(horizontal: 10);

  final EdgeInsets hsdm = const EdgeInsets.symmetric(horizontal: 15);

  final EdgeInsets hmd = const EdgeInsets.symmetric(horizontal: 20);

  final EdgeInsets hxl = const EdgeInsets.symmetric(horizontal: 30);

  final EdgeInsets tmin = const EdgeInsets.only(top: 5);

  final EdgeInsets tsd = const EdgeInsets.only(top: 10);

  final EdgeInsets tmd = const EdgeInsets.only(top: 15);

  final EdgeInsets txl = const EdgeInsets.only(top: 20);

  final EdgeInsets t30 = const EdgeInsets.only(top: 30);

  final EdgeInsets t40 = const EdgeInsets.only(top: 40);

  final EdgeInsets bmin = const EdgeInsets.only(bottom: 5);

  final EdgeInsets bsd = const EdgeInsets.only(bottom: 10);

  final EdgeInsets bmd = const EdgeInsets.only(bottom: 15);

  final EdgeInsets bxl = const EdgeInsets.only(bottom: 20);

  final EdgeInsets rmin = const EdgeInsets.only(right: 5);

  final EdgeInsets rsd = const EdgeInsets.only(right: 10);

  final EdgeInsets lsd = const EdgeInsets.only(left: 10);
}
