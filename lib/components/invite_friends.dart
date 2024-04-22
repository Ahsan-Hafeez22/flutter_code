import 'package:flutter/material.dart';

Widget buildInviteFriends(BuildContext context) {
  return Center(
    child: Stack(
      children: [
        Container(
          height: 120,
          width: 328,
          decoration: BoxDecoration(
            color: const Color.fromARGB(95, 0, 247, 255),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        Positioned(
          top: 10,
          left: 20,
          child: Text(
            "Invite your friends",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Positioned(
          top: 32,
          left: 20,
          child: Text(
            "Get 20\$ for ticket",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        Positioned(
          top: 60,
          left: 20,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF00F8FF),
            ),
            onPressed: () {},
            child: const Text(
              'INVITE',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Positioned(
          right: 1,
          child: Image.asset(
            'assets/images/gift.png',
            height: 150,
          ),
        ),
      ],
    ),
  );
}
