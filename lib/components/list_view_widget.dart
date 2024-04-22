import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  final String date;
  final String title;
  final String location;
  final String image;

  const ListViewWidget({
    super.key,
    required this.date,
    required this.title,
    required this.location,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1),
              color: Color.fromARGB(255, 198, 198, 198),
            ),
          ],
        ),
        padding: const EdgeInsets.all(8),
        height: 105,
        width: 80,
        child: Row(
          children: [
            Image.asset(image),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    date,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.blue, fontSize: 14),
                  ),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyMedium,
                    softWrap: true,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Color(0xFF747688),
                        size: 20,
                      ),
                      Text(
                        location,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
