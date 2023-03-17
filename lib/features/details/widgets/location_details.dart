// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocationDetails extends StatelessWidget {
  dynamic args = Get.parameters;

  LocationDetails({
    super.key,
    required this.args,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Details',
          style: Theme.of(context).textTheme.labelSmall,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text("${args.description}"),
        )
      ],
    );
  }
}
