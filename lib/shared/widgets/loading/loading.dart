import 'package:flutter/material.dart';

import '../../style/style_theme.dart';

import 'color_loader.dart';

class Loading extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  final bool isMessage;

  const Loading({
    Key? key,
    required this.isLoading,
    required this.child,
    this.isMessage = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      fit: StackFit.passthrough,
      children: [
        child,
        SizedBox(
          height: size.height,
          width: size.width,
          child: Visibility(
            visible: isLoading,
            child: Container(
              width: double.infinity,
              height: size.height,
              color: Style.theme.blurredBackground.withOpacity(0.7),
              child: isMessage
                  ? Center(
                      child: SizedBox(
                        height: 70,
                        child: Column(
                          children: [
                            Text(
                              'Processando...',
                              style: Style.fieldStyle.heading.copyWith(
                                color: Style.theme.white,
                              ),
                            ),
                            Style.spacing.md,
                            ColorLoader(
                              dotOneColor: Style.theme.loadingColor,
                              dotTwoColor: Style.theme.loadingColor,
                              dotThreeColor: Style.theme.loadingColor,
                            ),
                          ],
                        ),
                      ),
                    )
                  : Center(
                      child: SizedBox(
                        height: 50,
                        child: ColorLoader(
                          dotOneColor: Style.theme.loadingColor,
                          dotTwoColor: Style.theme.loadingColor,
                          dotThreeColor: Style.theme.loadingColor,
                        ),
                      ),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
