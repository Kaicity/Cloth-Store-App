import 'package:clothstore_mobile/screens/cart_screen.dart';
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CartScreen(),
              ),
            );
          },
          icon: const Icon(Icons.shopping_cart_outlined),
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
