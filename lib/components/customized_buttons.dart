import 'package:flutter/material.dart';

Widget buildCustomElevatedButton({
  required BuildContext context,
  required VoidCallback onPressed,
  required String label,
  required IconData icon,
  required Color backgroundColor,
}) {
  return Center(
    child: ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size>(
          const Size(271, 58),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          Theme.of(context).primaryColor,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            label,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(width: 50),
          CircleAvatar(
            radius: 20,
            backgroundColor: const Color.fromARGB(255, 55, 74, 216),
            child: Icon(
              icon,
              size: 20,
              color: Colors.white,
            ),
          )
        ],
      ),
    ),
  );
}

Widget buildCustomElevatedButtonEvent({
  required BuildContext context,
  required VoidCallback onPressed,
  required String label,
  required IconData icon,
  required Color backgroundColor,
}) {
  return Center(
    child: ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size>(
          const Size(271, 58),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          Theme.of(context).primaryColor,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            label,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(width: 20),
          CircleAvatar(
            radius: 20,
            backgroundColor: const Color.fromARGB(255, 55, 74, 216),
            child: Icon(
              icon,
              size: 20,
              color: Colors.white,
            ),
          )
        ],
      ),
    ),
  );
}

Widget buildLoginButton(
  BuildContext context,
  VoidCallback onPressed,
  String buttonText,
  String imagePath,
  double imageSize,
) {
  return Center(
    child: ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size>(
          const Size(271, 58),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.white,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: imageSize,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            buttonText,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.black, fontSize: 16),
          ),
        ],
      ),
    ),
  );
}

Widget buildTextButton(
    BuildContext context, String text, VoidCallback onPressed) {
  return TextButton(
    onPressed: onPressed,
    child: Text(
      text,
      style: Theme.of(context)
          .textTheme
          .bodyMedium!
          .copyWith(fontSize: 22, color: Colors.white),
    ),
  );
}
