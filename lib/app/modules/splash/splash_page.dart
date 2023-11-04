import 'package:flutter/material.dart';

import 'package:target_challenge/app/modules/splash/splash_store.dart';
import 'package:target_challenge/shared/style/style_theme.dart';
import 'package:target_challenge/shared/widgets/loading/color_loader.dart';
import 'package:target_challenge/shared/widgets/scaffold/scaffold_primary.dart';

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
    return ScaffoldPrimary(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Projeto desafio Target',
          style: Style.fieldStyle.big32(),
        ),
        Style.spacing.xl,
        ColorLoader(
          dotOneColor: Style.theme.white,
          dotTwoColor: Style.theme.grey,
          dotThreeColor: Style.theme.grey7,
        ),
      ],
    ));
  }
}
