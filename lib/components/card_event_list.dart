import 'package:event_booking_app/components/card_built.dart';
import 'package:flutter/material.dart';

Widget buildEventList(BuildContext context) {
  return SizedBox(
    height: 260,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        buildCardWidget(
          context,
          'assets/images/card.svg',
          "International Band Music",
          "Guild Street London, UK",
        ),
        const SizedBox(width: 10),
        buildCardWidget(
          context,
          'assets/images/card2.svg',
          "Jo Malone London’s Music",
          "Radius Gallery • Santa Cruz, CA",
        ),
        const SizedBox(width: 10),
        buildCardWidget(
          context,
          'assets/images/card.svg',
          "Jo Malone London’s Music",
          "Radius Gallery • Santa Cruz, CA",
        ),
      ],
    ),
  );
}
