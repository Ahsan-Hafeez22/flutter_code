import 'package:event_booking_app/screens/event_screen.dart';
import 'package:event_booking_app/screens/home.dart';
import 'package:event_booking_app/screens/map_screen.dart';
import 'package:event_booking_app/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentTab = 0;
  final List<Widget> screens = const [
    HomeScreen(),
    EventScreen(),
    MapScreen(),
    ProfileScreen(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  late Widget currentScreen;

  // Flag to track whether the drawer is open
  bool isDrawerOpen = false;

  @override
  void initState() {
    super.initState();
    currentScreen = screens[currentTab];
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      // Hide bottom navigation when drawer is open
      visible: !isDrawerOpen,
      child: Scaffold(
        body: PageStorage(
          bucket: bucket,
          child: currentScreen,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue,
          shape: const CircleBorder(),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 20,
                height: 20,
                color: Colors.white,
              ),
              const Icon(
                Icons.add,
                color: Colors.blue,
                size: 20,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  minWidth: 0,
                  onPressed: () {
                    setState(() {
                      currentScreen = const HomeScreen();
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.explore_outlined,
                        color: currentTab == 0 ? Colors.blue : Colors.grey,
                        size: 24,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Explore",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color:
                                  currentTab == 0 ? Colors.blue : Colors.grey,
                              fontSize: 12,
                            ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = const EventScreen();
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.event_rounded,
                        color: currentTab == 1 ? Colors.blue : Colors.grey,
                        size: 24,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Event",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color:
                                  currentTab == 1 ? Colors.blue : Colors.grey,
                              fontSize: 12,
                            ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 0,
                  onPressed: () {
                    setState(() {
                      currentScreen = const MapScreen();
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: currentTab == 2 ? Colors.blue : Colors.grey,
                        size: 24,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Map",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color:
                                  currentTab == 2 ? Colors.blue : Colors.grey,
                              fontSize: 12,
                            ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = const ProfileScreen();
                      currentTab = 3;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.person_2,
                        color: currentTab == 3 ? Colors.blue : Colors.grey,
                        size: 24,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Profile",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color:
                                  currentTab == 3 ? Colors.blue : Colors.grey,
                              fontSize: 12,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
