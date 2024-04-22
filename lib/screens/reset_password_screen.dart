import 'package:event_booking_app/components/customized_buttons.dart';
import 'package:event_booking_app/components/text_fields.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 15),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 25,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
            child: Text(
              "Resset Password",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 80, 25),
            child: Text(
              "Please enter your email address to request a password reset",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          buildTextField(
            isEmail: true,
            context,
            hintText: 'abc@gmail.com',
            obscureText: false,
            prefixIcon: Image.asset(
              "assets/images/mail.png",
              width: 22,
              height: 22,
            ),
            suffixIcon: null,
          ),
          const SizedBox(height: 40),
          buildCustomElevatedButton(
            context: context,
            onPressed: () {
              Navigator.pop(context);
            },
            label: 'SEND',
            icon: Icons.arrow_forward_sharp,
            backgroundColor: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
