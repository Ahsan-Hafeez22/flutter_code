import 'package:event_booking_app/components/customized_buttons.dart';
import 'package:event_booking_app/screens/verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:event_booking_app/components/text_fields.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  SignUpScreenState createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  bool obsecureTextPsd = false;
  bool obsecureTextCpsd = false;
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 0, 10),
              child: Text(
                "Sign Up",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            buildTextField(
              isFirstName: true,
              context,
              hintText: 'Full Name',
              obscureText: false,
              prefixIcon: const Icon(
                Icons.person_outlined,
                size: 22,
                color: Color(0xFF807A7A),
              ),
              suffixIcon: null,
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
            buildTextField(
              isPassword: true,
              context,
              hintText: 'Your password',
              obscureText: obsecureTextPsd,
              prefixIcon: Image.asset(
                "assets/images/password.png",
                width: 22,
                height: 22,
              ),
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      obsecureTextPsd = !obsecureTextPsd;
                    });
                  },
                  icon: Icon(
                    obsecureTextPsd ? Icons.visibility : Icons.visibility_off,
                    color: const Color.fromARGB(255, 153, 155, 170),
                  )),
            ),
            buildTextField(
              isConfirmPassword: true,
              context,
              hintText: 'Confirm password',
              obscureText: obsecureTextCpsd,
              prefixIcon: Image.asset(
                "assets/images/password.png",
                width: 22,
                height: 22,
              ),
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      obsecureTextCpsd = !obsecureTextCpsd;
                    });
                  },
                  icon: Icon(
                    obsecureTextCpsd ? Icons.visibility : Icons.visibility_off,
                    color: const Color.fromARGB(255, 153, 155, 170),
                  )),
            ),
            const SizedBox(height: 40),
            buildCustomElevatedButton(
              context: context,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VerificationScreen(),
                    ));
              },
              label: 'SIGN UP',
              icon: Icons.arrow_forward_sharp,
              backgroundColor: Theme.of(context).primaryColor,
            ),
            const SizedBox(height: 40),
            Align(
              alignment: Alignment.center,
              child: Text(
                'OR',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: const Color.fromARGB(255, 157, 157, 157),
                    fontSize: 16),
              ),
            ),
            const SizedBox(height: 10),
            buildLoginButton(
              context,
              () {},
              "Login with Google",
              'assets/images/google.png',
              25,
            ),
            const SizedBox(height: 15),
            buildLoginButton(
              context,
              () {},
              "Login with Facebook",
              'assets/images/facebook.png',
              25,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.black),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Sign in',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
