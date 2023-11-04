import 'package:flutter/material.dart';

import 'package:target_challenge/app/modules/splash/splash_store.dart';

class SplashPage extends StatefulWidget {
  final SplashStore store;
  const SplashPage({
    Key? key,
    required this.store,
  }) : super(key: key);
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  late SplashStore _store;

  @override
  void initState() {
    _store = widget.store;
    _store.dismiss();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Icon(
            Icons.home,
            size: 50,
          )
        ],
      ),
    );
  }
}
