import 'package:event_booking_app/components/customized_buttons.dart';
import 'package:event_booking_app/screens/onboarding_screen.dart';
import 'package:event_booking_app/screens/reset_password_screen.dart';
import 'package:event_booking_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:event_booking_app/components/text_fields.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;
  bool obsecure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 73, 0, 0),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 162,
                    height: 120,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "Sign in",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              buildTextField(
                context,
                hintText: 'abc@gmail.com',
                prefixIcon: Image.asset(
                  "assets/images/mail.png",
                  width: 22,
                  height: 22,
                ),
                isEmail: true,
              ),
              buildTextField(
                isPassword: true,
                context,
                hintText: 'Your password',
                obscureText: obsecure,
                prefixIcon: Image.asset(
                  "assets/images/password.png",
                  width: 22,
                  height: 22,
                ),
                suffixIcon: IconButton(
                  iconSize: 20,
                  onPressed: () {
                    setState(() {
                      obsecure = !obsecure;
                    });
                  },
                  icon: Icon(
                    obsecure ? Icons.visibility : Icons.visibility_off,
                    color: const Color.fromARGB(255, 153, 155, 170),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Transform.scale(
                          scale: 0.7,
                          child: Switch(
                            value: rememberMe,
                            activeTrackColor: Theme.of(context).primaryColor,
                            inactiveThumbColor: Colors.white,
                            onChanged: (bool value) {
                              setState(() {
                                rememberMe = value;
                              });
                            },
                          ),
                        ),
                        Text(
                          'Remember Me',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: Colors.black),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ResetPasswordScreen()));
                      },
                      child: Text(
                        'Forgot Password?',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              buildCustomElevatedButton(
                context: context,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OnboardingScreen(),
                      ));
                },
                label: 'SIGN IN',
                icon: Icons.arrow_forward_sharp,
                backgroundColor: Theme.of(context).primaryColor,
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'OR',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: const Color.fromARGB(255, 157, 157, 157),
                      fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),
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
              const SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't hava an account?",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign up',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Theme.of(context).primaryColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
