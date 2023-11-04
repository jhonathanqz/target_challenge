import 'package:flutter/material.dart';

import '../../style/style_theme.dart';
import '../loading/loading.dart';

class ScaffoldPrimary extends StatelessWidget {
  final Widget child;
  final bool isLoading;
  final Widget? header;
  final Widget? footer;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;

  const ScaffoldPrimary({
    Key? key,
    required this.child,
    this.isLoading = false,
    this.header,
    this.footer,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        floatingActionButton: floatingActionButton ?? Container(),
        floatingActionButtonLocation: floatingActionButtonLocation ??
            FloatingActionButtonLocation.endFloat,
        backgroundColor: Style.theme.background,
        body: Loading(
          isLoading: isLoading,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 18, 60, 124),
                  Colors.teal,
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header ?? Container(),
                Expanded(child: child),
                footer ?? Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
