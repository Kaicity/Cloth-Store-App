import 'package:flutter/material.dart';

import '../constants.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu_open),
          style: IconButton.styleFrom(
            backgroundColor: kcontentdcolor,
            padding: const EdgeInsets.all(15),
          ),
          iconSize: 30,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_outlined),
          style: IconButton.styleFrom(
            backgroundColor: kcontentdcolor,
            padding: const EdgeInsets.all(15),
          ),
          iconSize: 30,
        ),
      ],
    );
  }
}
