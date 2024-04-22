import 'package:flutter/material.dart';

Widget buildSectionTitle(BuildContext context, String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Text(
                'See All',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const Icon(
                Icons.arrow_right,
                color: Color(0xFF747688),
              )
            ],
          ),
        )
      ],
    ),
  );
}
