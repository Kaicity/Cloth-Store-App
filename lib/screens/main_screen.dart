import 'package:clothstore_mobile/constants.dart';
import 'package:clothstore_mobile/screens/cart_screen.dart';
import 'package:clothstore_mobile/screens/home_screen.dart';
import 'package:clothstore_mobile/screens/user_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 2;
  List screens = [
    Scaffold(),
    Scaffold(),
    HomeScreen(),
    CartScreen(),
    UserScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentTab = 2;
          });
        },
        elevation: 0,
        shape: const CircleBorder(),
        backgroundColor: kprimarycolor,
        child: const Icon(
          Icons.home_filled,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 70,
        color: Colors.white,
        elevation: 0,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => setState(
                () {
                  currentTab = 0;
                },
              ),
              icon: const Icon(Icons.grid_view_outlined),
              color: currentTab == 0 ? kprimarycolor : Colors.grey.shade400,
            ),
            IconButton(
              onPressed: () => setState(
                () {
                  currentTab = 1;
                },
              ),
              icon: const Icon(Icons.favorite_outline),
              color: currentTab == 1 ? kprimarycolor : Colors.grey.shade400,
            ),
            IconButton(
              onPressed: () => setState(
                () {
                  currentTab = 3;
                },
              ),
              icon: const Icon(Icons.shopping_cart_outlined),
              color: currentTab == 3 ? kprimarycolor : Colors.grey.shade400,
            ),
            IconButton(
              onPressed: () => setState(
                () {
                  currentTab = 4;
                },
              ),
              icon: const Icon(Icons.person_outline_rounded),
              color: currentTab == 4 ? kprimarycolor : Colors.grey.shade400,
            ),
          ],
        ),
      ),
      body: screens[currentTab],
    );
  }
}
