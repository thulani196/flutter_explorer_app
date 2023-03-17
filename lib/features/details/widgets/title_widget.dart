// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TitleWidget extends StatelessWidget {
  dynamic args = Get.arguments;

  TitleWidget({
    super.key,
    required this.args,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          args.name,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Text(
          args.location,
          style: Theme.of(context).textTheme.labelMedium,
        )
      ],
    );
  }
}
