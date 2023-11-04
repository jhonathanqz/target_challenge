import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import '../../style/style_theme.dart';

import 'request/information_popup_request.dart';

class InformationPopup extends StatelessWidget {
  final InformationPopupRequest request;
  const InformationPopup({
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
        child: Container(
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
                            Container(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: Style.edgeInsets.hmd,
                child: Row(
                  children: [
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
                        onPressed: () {
                          if (request.ontap != null) {
                            request.ontap!();
                            return;
                          }
                          Modular.to.pop();
                        },
                        child: Padding(
                          padding: Style.edgeInsets.vsd,
                          child: Text(
                            request.confirmText ?? 'Ok',
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
      ),
    );
  }
}
