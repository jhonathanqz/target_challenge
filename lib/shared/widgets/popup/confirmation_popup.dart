import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import '../../style/style_theme.dart';

import 'request/confirmation_popup_request.dart';

class ConfirmationPopUp extends StatelessWidget {
  final ConfirmationPopupRequest request;
  const ConfirmationPopUp({
    Key? key,
    required this.request,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {},
        child: Stack(
          children: [
            Container(
              padding: Style.edgeInsets.sdAll,
              height: size.height / 2.6,
              width: size.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10),
                  bottom: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Style.theme.shadow,
                    spreadRadius: 10,
                    blurRadius: 20,
                    offset: const Offset(0, 0),
                  ),
                ],
                color: Style.theme.white,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                            child: Icon(
                              request.icon ?? Icons.info,
                              size: 45,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Center(
                                  child: Text(
                                    request.title,
                                    style: Style.fieldStyle.titleBold.copyWith(
                                      color: Style.theme.darkColor,
                                      fontSize: 20,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    padding: Style.edgeInsets.minAll,
                                    child: Text(
                                      request.message,
                                      style: Style.fieldStyle.title.copyWith(
                                        fontSize: 17,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                request.messageBold != null
                                    ? Center(
                                        child: Container(
                                          padding: Style.edgeInsets.minAll,
                                          child: Text(
                                            request.messageBold!,
                                            style: Style.fieldStyle.titleBold
                                                .copyWith(
                                              fontSize: 17,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      )
                                    : const SizedBox.shrink(),
                                Container(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: Style.edgeInsets.hsd,
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return Style.theme.grey7;
                                  }
                                  return Style.theme
                                      .grey7; // Use the component's default.
                                },
                              ),
                            ),
                            onPressed: () {
                              if (request.ontapBack != null) {
                                request.ontapBack!();
                                return;
                              }
                              Modular.to.pop();
                            },
                            child: Padding(
                              padding: Style.edgeInsets.vsd,
                              child: Text(
                                request.cancelText,
                                style: Style.fieldStyle.titleButton.copyWith(
                                  color: Style.theme.lightTextColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        Style.spacing.smW,
                        Expanded(
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return Style.theme.buttonColor;
                                  }
                                  return Style.theme
                                      .buttonColor; // Use the component's default.
                                },
                              ),
                            ),
                            onPressed: request.ontap,
                            child: Padding(
                              padding: Style.edgeInsets.vsd,
                              child: Text(
                                request.confirmText,
                                style: Style.fieldStyle.titleButton.copyWith(
                                  color: Style.theme.buttonTextColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: () => Modular.to.pop(),
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                    child: Icon(
                      Icons.close_rounded,
                      size: Style.size.size25,
                      color: Style.theme.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
