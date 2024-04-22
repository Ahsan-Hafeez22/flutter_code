import 'package:event_booking_app/screens/event_screen.dart';
import 'package:event_booking_app/screens/login_screen.dart';
// import 'package:event_booking_app/screens/notification_screen.dart';
import 'package:event_booking_app/screens/reset_password_screen.dart';
import 'package:event_booking_app/screens/signup_screen.dart';
import 'package:event_booking_app/screens/verification_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/login': (context) => const LoginScreen(),
          '/signup': (context) => const SignUpScreen(),
          '/verification': (context) => const VerificationScreen(),
          '/reset': (context) => const ResetPasswordScreen(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xFF5669FF),
          scaffoldBackgroundColor: Colors.white,
          textTheme: const TextTheme(
            bodyLarge: TextStyle(
                fontSize: 24.0,
                fontFamily: 'mainFont',
                color: Colors.black,
                fontWeight: FontWeight.w700),
            bodyMedium: TextStyle(
                fontSize: 16,
                fontFamily: 'mainFont',
                color: Color(0xFF120D26),
                fontWeight: FontWeight.w100),
            bodySmall: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 147, 147, 167),
                fontFamily: 'mainFont',
                fontWeight: FontWeight.w100),
          ),
        ),
        // home: const OnboardingScreen()); // home: const LoginScreen());
        // home: const SplashScreen());
        // home: const LoginScreen());
        // home: const SignUpScreen());
        home: const EventScreen());
    // home: const NotificationScreen());
    // home: const VerificationScreen());
    // home: const ResetPasswordScreen());
    // home: const BottomNavigation(),
    // home: const OrganizerProfileScreen(),
    // );
  }
}
