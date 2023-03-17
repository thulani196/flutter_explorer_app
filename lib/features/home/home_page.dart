import 'dart:io';
import 'package:flutter/material.dart';
import '../../core/constants/locations.dart';
import 'widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final statusBarHeightCtrl = Platform.isAndroid
        ? MediaQuery.of(context).padding.top + 20
        : MediaQuery.of(context).padding.top + 15;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: statusBarHeightCtrl,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Text(
                'Explore',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Text(
                'the beautiful world',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 38.0, left: 20.0, right: 20),
                child: SearchField()),
            const SizedBox(
              height: 66,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Text(
                'Top Destinations',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
            Column(
              children: <Widget>[
                DestinationRow(
                  locations: locations,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Text(
                'Featured Destinations',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
            Column(
              children: <Widget>[
                DestinationRow(
                  locations: locations1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
