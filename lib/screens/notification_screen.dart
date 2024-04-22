import 'package:event_booking_app/components/notification_items.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
        title: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            "Notification",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontSize: 28, fontWeight: FontWeight.w500),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 20, right: 20),
            child: Icon(
              Icons.more_vert,
              size: 30,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body:

          //       Padding(
          //         padding: const EdgeInsets.symmetric(horizontal: 60),
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Container(
          //               decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(50),
          //                 boxShadow: [
          //                   BoxShadow(
          //                     color: Colors.black.withOpacity(0.1),
          //                     spreadRadius: 0,
          //                     blurRadius: 100,
          //                   ),
          //                 ],
          //               ),
          //               padding: EdgeInsets.zero,
          //               child: SvgPicture.asset(
          //                 "assets/images/Artwork.svg",
          //               ),
          //             ),
          //             Text(
          //               'No Notifications!',
          //               style: Theme.of(context).textTheme.bodyMedium,
          //             ),
          //             const SizedBox(height: 10),
          //             Text(
          //                 'Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor',
          //                 style: Theme.of(context).textTheme.bodySmall)
          //           ],
          //         ),
          //       ));
          // }
          Column(
        children: [
          const SizedBox(height: 30),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: ListView(
                children: const [
                  NotificationItem(
                    name: 'David Sillbia',
                    message: 'invited Jo Malone Landon\'s Mother\'s',
                    time: 'Just now',
                    imagePath: 'assets/images/dp1.png',
                    includeButtons: true,
                  ),
                  NotificationItem(
                    name: 'Adnan Shafi',
                    message: 'Started following you',
                    time: '5 min ago',
                    imagePath: 'assets/images/dp2.png',
                    includeButtons: false,
                  ),
                  NotificationItem(
                    name: 'Joan Baker',
                    message: 'Invite A virtual Evening of Smooth Jazz',
                    time: '25 min ago',
                    imagePath: 'assets/images/dp3.png',
                    includeButtons: true,
                  ),
                  NotificationItem(
                    name: 'Ronald  C. Kinch',
                    message: 'Like you events',
                    time: '1 hr ago',
                    imagePath: 'assets/images/dp4.png',
                    includeButtons: false,
                  ),
                  NotificationItem(
                    name: 'Jennifer Fritz',
                    message: 'Invite you International Kids Safe ',
                    time: '5 hr ago',
                    imagePath: 'assets/images/dp5.png',
                    includeButtons: true,
                  ),
                  NotificationItem(
                    name: 'Eric G. Prickett',
                    message: 'Started following you',
                    time: 'wed, 3.30 pm',
                    imagePath: 'assets/images/dp2.png',
                    includeButtons: false,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
