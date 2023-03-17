import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constants/icon_constants.dart';
import 'widgets/title_widget.dart';
import 'widgets/widgets.dart';

// ignore: must_be_immutable
class DetailsPage extends StatelessWidget {
  dynamic args = Get.arguments;
  DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final statusBarHeightCtrl = Platform.isAndroid
        ? MediaQuery.of(context).padding.top + 30
        : MediaQuery.of(context).padding.top + 15;

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: statusBarHeightCtrl,
            ),
            Container(
              height: 500,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                image: DecorationImage(
                    image: AssetImage(args.imgUrl), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ActionButton(
                          iconPath: backIcon,
                          actionCallback: () => Get.back(),
                        ),
                        ActionButton(
                          iconPath: heartIcon,
                          actionCallback: () => {},
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 43),
                      child: TitleWidget(args: args),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InfoButton(args: args, isRating: true),
                  InfoButton(args: args, isRating: false),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: LocationDetails(args: args),
            )
          ],
        ),
      ),
    );
  }
}
