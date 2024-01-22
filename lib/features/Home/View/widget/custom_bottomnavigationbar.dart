import 'package:flutter/material.dart';
import 'package:smart_home/core/utils/constant.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedIconTheme: const IconThemeData(color: Colors.amber),
      iconSize: 40,
      selectedItemColor: Colors.amber,
      elevation: 0,
      currentIndex: currentIndex,
      backgroundColor: kPrimrycolor,
      items: [
        BottomNavigationBarItem(
          label: "Lock",
          icon: IconButton(
              onPressed: () {
                currentIndex = 0;
                setState(() {});
              },
              icon: const Icon(Icons.lock)),
        ),
        BottomNavigationBarItem(
          label: "Home",
          icon: IconButton(
              onPressed: () {
                currentIndex = 1;
                setState(() {});
              },
              icon: const Icon(Icons.home)),
        ),
        BottomNavigationBarItem(
          label: "Settings",
          icon: IconButton(
              onPressed: () {
                currentIndex = 2;
                setState(() {});
              },
              icon: const Icon(Icons.settings)),
        ),
      ],
    );
  }
}
