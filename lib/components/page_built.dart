import 'package:flutter/material.dart';

Widget buildPage(BuildContext context, String imagePath, String text) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const SizedBox(height: 20),
      Image.asset(imagePath),
      Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        padding:
            const EdgeInsets.only(top: 30, left: 35, right: 35, bottom: 20),
        child: Column(
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              child: Text(
                'In publishing and graphic design, Lorem is a placeholder text commonly ',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 15, color: Colors.white.withOpacity(0.7)),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      )
    ],
  );
}
