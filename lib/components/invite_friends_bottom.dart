import 'package:flutter/material.dart';

class InviteFriend extends StatefulWidget {
  final List<String> friendNames;
  final List<String> friendImages;
  final List<String> friendFollowers;

  const InviteFriend({
    super.key,
    required this.friendNames,
    required this.friendImages,
    required this.friendFollowers,
  });

  @override
  State<InviteFriend> createState() => _InviteFriendState();
}

class _InviteFriendState extends State<InviteFriend> {
  late List<bool> isIconBlueList;

  @override
  void initState() {
    super.initState();
    isIconBlueList = List.generate(widget.friendNames.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1200,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Invite Friends',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 26),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 16.0),
                hintText: 'Search',
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 18),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(
                    Icons.search,
                    size: 30,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 211, 210, 210)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: widget.friendNames.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(widget.friendImages[index]),
                  ),
                  title: Text(
                    widget.friendNames[index],
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    widget.friendFollowers[index],
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.grey),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        isIconBlueList[index] = !isIconBlueList[index];
                      });
                    },
                    icon: Icon(
                      size: 25,
                      isIconBlueList[index]
                          ? Icons.check_circle_sharp
                          : Icons.check_circle_sharp,
                      color: isIconBlueList[index]
                          ? Colors.blue
                          : Color.fromARGB(255, 201, 201, 201),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
