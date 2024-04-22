import 'package:flutter/material.dart';

Widget buildButton(
  BuildContext context,
  String label,
  Color backgroundColor,
  Function() onPressed,
) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      padding: const EdgeInsets.all(8),
    ),
    onPressed: onPressed,
    child: Text(
      label,
      style: Theme.of(context)
          .textTheme
          .bodyMedium!
          .copyWith(color: Colors.white, fontSize: 14),
    ),
  );
}
