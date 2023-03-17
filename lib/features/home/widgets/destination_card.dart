import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/models/location_model.dart';
import 'widgets.dart';

class DestinationCard extends StatefulWidget {
  const DestinationCard({
    super.key,
    required this.location,
  });

  final Location location;

  @override
  State<DestinationCard> createState() => _DestinationCardState();
}

class _DestinationCardState extends State<DestinationCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed('/details', arguments: widget.location),
      child: Padding(
        padding: const EdgeInsets.only(
            right: 12.0, top: 12.0, left: 0.0, bottom: 10.0),
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0,
                  blurRadius: 9,
                  offset: const Offset(0, 5),
                ),
              ],
              color: Theme.of(context).primaryColorLight,
              borderRadius: const BorderRadius.all(Radius.circular(27.46))),
          height: 208,
          width: 294,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 7.0),
                child: Center(
                  child: HeaderImage(imgUrl: widget.location.imgUrl!),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 10.0),
                child: Text(
                  widget.location.name!,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 10.0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/pin_drop.png",
                      width: 12.21,
                      height: 10.77,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      widget.location.location!,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
