import 'package:flutter/material.dart';

import 'package:smart_home/features/Home/View/widget/custom_appbar_home.dart';
import 'package:smart_home/features/Home/View/widget/custom_bottomnavigationbar.dart';
import 'package:smart_home/features/Home/View/widget/custom_list_home.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: const Column(children: [
        CustomAppBarHomePage(),
        SizedBox(height: 25),
        Text("Select A Room",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "Frank_Ruhl_Libre",
            )),
        SizedBox(height: 30),
        CustomListHome(),
        Spacer(),
        CustomBottomNavigationBar(),
      ]),
    );
  }
}
