import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Ashfak Sayem',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 20),
              ),
              accountEmail: null,
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset('assets/images/drawer_image.png'),
                ),
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            buildListTile(
              context,
              icon: Icons.person_outline,
              title: 'My Profile',
              onTap: () => print('profile tapped'),
            ),
            buildListTile(
              context,
              icon: Icons.messenger_outline_rounded,
              title: 'Message',
              onTap: () => print('message tapped'),
            ),
            buildListTile(
              context,
              icon: Icons.calendar_today_outlined,
              title: 'Calendar',
              onTap: () => print('calendar tapped'),
            ),
            buildListTile(
              context,
              icon: Icons.bookmark_border,
              title: 'Bookmark',
              onTap: () => print('bookmark tapped'),
            ),
            buildListTile(
              context,
              icon: Icons.mail_outline,
              title: 'Contact Us',
              onTap: () => print('contact us tapped'),
            ),
            buildListTile(
              context,
              icon: Icons.settings_outlined,
              title: 'Settings',
              onTap: () => print('settings tapped'),
            ),
            buildListTile(
              context,
              icon: Icons.help_outline,
              title: 'Helps & FAQs',
              onTap: () => print('help tapped'),
            ),
            buildListTile(
              context,
              icon: Icons.login_outlined,
              title: 'Sign Out',
              onTap: () {
                // Navigator.popUntil(context, (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }

  Container buildListTile(BuildContext context,
      {required IconData icon,
      required String title,
      required VoidCallback onTap}) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        onTap: onTap,
      ),
    );
  }
}
