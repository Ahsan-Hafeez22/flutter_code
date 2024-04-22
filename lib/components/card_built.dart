import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget buildCardWidget(
    BuildContext context, String svgImagePath, String title, String location) {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      width: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              SvgPicture.asset(svgImagePath),
              Positioned(
                top: 10,
                left: 8,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(203, 255, 255, 255),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "10",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text("JUNE",
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 5,
                child: IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: const Color.fromARGB(203, 255, 255, 255),
                  ),
                  icon: const Icon(
                    Icons.bookmark_border,
                    size: 25,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Color(0xFF747688),
                  ),
                  Text(
                    location,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
