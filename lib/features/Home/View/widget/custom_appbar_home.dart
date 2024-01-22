import 'package:flutter/material.dart';

class CustomAppBarHomePage extends StatelessWidget {
  const CustomAppBarHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.miscellaneous_services_rounded,
              size: 30,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 30,
            )),
      ],
    );
  }
}
