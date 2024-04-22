import 'package:flutter/material.dart';

Widget buildTextField(
  BuildContext context, {
  required String hintText,
  Widget? prefixIcon,
  Widget? suffixIcon,
  bool obscureText = false,
  bool isPassword = false,
  bool isEmail = false,
  bool isFirstName = false,
  bool isConfirmPassword = false,
}) {
  return Center(
    child: Container(
      width: 350,
      height: 60,
      margin: const EdgeInsets.only(top: 10),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodySmall,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: prefixIcon,
          ),
          suffixIcon: suffixIcon != null
              ? Padding(padding: const EdgeInsets.all(8.0), child: suffixIcon)
              : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:
                const BorderSide(color: Color.fromARGB(255, 211, 210, 210)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.black),
          ),
        ),
        style: Theme.of(context).textTheme.bodySmall,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      ),
    ),
  );
}
