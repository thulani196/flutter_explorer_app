import 'package:flutter/material.dart';
import '../../../core/models/location_model.dart';
import 'widgets.dart';

class DestinationRow extends StatelessWidget {
  final List<Location> locations;
  const DestinationRow({
    super.key,
    required this.locations,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
          padding: const EdgeInsets.only(left: 16, bottom: 4),
          shrinkWrap: true,
          itemCount: 3,
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              DestinationCard(location: locations[index])),
    );
  }
}
