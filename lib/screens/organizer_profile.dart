import 'package:event_booking_app/components/list_view_widget.dart';
import 'package:event_booking_app/components/review.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:share_plus/share_plus.dart';

class OrganizerProfileScreen extends StatefulWidget {
  const OrganizerProfileScreen({super.key});

  @override
  State<OrganizerProfileScreen> createState() => _OrganizerProfileScreenState();
}

class _OrganizerProfileScreenState extends State<OrganizerProfileScreen> {
  String text =
      'Enjoy your favorite dish and a lovely time with your friends and family. Food from local food trucks will be available for purchase.';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Share.share('Hello, check out this amazing article!');
              },
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/profile.png'),
                      Text('David Silbia',
                          style: Theme.of(context).textTheme.bodyLarge),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '350',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                Text(
                                  'Followings',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Image.asset('assets/images/divider.png'),
                            ),
                            Column(
                              children: [
                                Text(
                                  '350',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                Text(
                                  'Followings',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 150,
                              height: 58,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor:
                                      Theme.of(context).primaryColor,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset(
                                        'assets/images/follow.png',
                                        color: Colors.white,
                                        width: 20,
                                      ),
                                      Text(
                                        'Follow',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              color: Colors.white,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                                width: 150,
                                height: 58,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Theme.of(context).primaryColor,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      backgroundColor: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Image.asset(
                                                'assets/images/bubble.png',
                                                width: 20,
                                              ),
                                              Text(
                                                'Message',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium!
                                                    .copyWith(
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                    ),
                                              )
                                            ]))))
                          ])
                    ])),
            const SizedBox(height: 10),
            TabBar(
              labelColor: Theme.of(context).primaryColor,
              unselectedLabelColor: const Color(0xFF747688),
              dividerColor: Colors.white,
              indicatorColor: Theme.of(context).primaryColor,
              tabs: [
                Tab(
                  child: Text(
                    'ABOUT',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Tab(
                  child: Text('EVENT',
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
                Tab(
                  child: Text(
                    'REVIEW',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SingleChildScrollView(
                      child: ReadMoreText(
                        text,
                        style:
                            Theme.of(context).textTheme.bodySmall!.copyWith(),
                        trimLines: 3,
                        textAlign: TextAlign.start,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: ' Read More',
                        trimExpandedText: ' Read less',
                        lessStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.blue),
                        moreStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.blue),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView(
                        children: const [
                          ListViewWidget(
                            date: 'Wed, April 28, 5:30PM',
                            title: 'Jo Malone London’s Mother’s Day Presents',
                            location: 'Radius Gallery • Santa Cruz, CA',
                            image: 'assets/images/listView3.png',
                          ),
                          ListViewWidget(
                            date: 'Sat, May 1 • 2:00 PM',
                            title: 'A Virtual Evening of Smooth Jazz',
                            location: 'Lot 13 • Oakland, CA',
                            image: 'assets/images/listView2.png',
                          ),
                          ListViewWidget(
                            date: 'Sat, Apr 24 • 1:30 PM',
                            title: 'Women\'s Leadership Conference 2021',
                            location: 'Radius Gallery • Santa Cruz, CA',
                            image: 'assets/images/listView1.png',
                          ),
                          ListViewWidget(
                            date: 'Fri, Apr 23 • 6:00 PM',
                            title: 'International Kids Safe Parents Night Out',
                            location: 'Lot 13 • Oakland, CA',
                            image: 'assets/images/listView3.png',
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListView(
                    children: const [
                      ProfileCard(
                          name: "Rocks Velkeinjen",
                          date: "10 FEB",
                          imageUrl: "assets/images/profile2.png",
                          description:
                              'Cinemas is the ultimate experience to see new movies in Gold Class or Vmax. Find a cinema near you.'),
                      ProfileCard(
                          name: "Rocks Velkeinjen",
                          date: "10 FEB",
                          imageUrl: "assets/images/profile2.png",
                          description:
                              'Cinemas is the ultimate experience to see new movies in Gold Class or Vmax. Find a cinema near you.'),
                      ProfileCard(
                          name: "Rocks Velkeinjen",
                          date: "10 FEB",
                          imageUrl: "assets/images/profile2.png",
                          description:
                              'Cinemas is the ultimate experience to see new movies in Gold Class or Vmax. Find a cinema near you.'),
                      ProfileCard(
                          name: "Rocks Velkeinjen",
                          date: "10 FEB",
                          imageUrl: "assets/images/profile2.png",
                          description:
                              'Cinemas is the ultimate experience to see new movies in Gold Class or Vmax. Find a cinema near you.'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
